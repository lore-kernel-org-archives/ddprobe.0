Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BDE7E6
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 17:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713634823; cv=none; b=b9j5hFV921+ecBiCyxEmgvHdBD8BWjCF1fU9bmSYO/tzycnG6jBdzBihw5I/J/f6SIsoOR3szg4WlnjcRzghexFg1tAmGWDShBfeFPBUj3euoCTo4zE4m151yq/c0Tj+lzvjDxGQZT02F+j24nPWDxqaB7wtvM0QS+8vUIwXxw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713634823; c=relaxed/simple;
	bh=CcJqBxv/wHFMrd2TbMDUOCpFfd7EyhKcD6UvOO3obTU=;
	h=To:Subject:From:Message-Id:Date; b=GGUVv0UJ+peNW/7qr2w4pqqaN8bplTFJYynHnuhj2dQnO5kqrae+FQZ+tf1fLX+Q7eZktD95eApo9BQNyuIQ1DyTX3ohB+dBPAxtlL7TVHCZql0XA1YDisRUYkpn3dCG6bfFOQ6LP8FFUDrKAyYCNi+Mz/+Kl3IFPwbz4pRIEaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvX7mYoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvX7mYoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB1CC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 17:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713634822;
	bh=CcJqBxv/wHFMrd2TbMDUOCpFfd7EyhKcD6UvOO3obTU=;
	h=To:Subject:From:Date:From;
	b=rvX7mYoq6QcBt0ICMl07xoDuzSpe/3yvZ0xQsVr8YoTwE+8qitT2M9cG8Q1VYLFMo
	 biKTFj/gYNk7eyhhy8VN6uG36XgrkCuLUqDS+nfDLn2if6Zy/y6ImkyeZG28aSTEsx
	 /WCa8/4Kt7tkLOOu+ahBUAqKANVsq5C4XKY/e39GT4uxX98Jr+ysJYlvY6/t1Jdrtc
	 TeWfErb95xQL6fo47lN7HOJS2NByir1uk2juRKE4a2AO+RqgpzOzhZESHnvQ/9A2Ul
	 G+6FcxLMMd9pH+NgeyrF3IAwhl/Zqez2Q9F9fZZ6Hr7kKtNPl7R0wmcRHcq2BrPMBA
	 uu4fAOGnhyjSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDEBC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 17:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171363482277.7614.1472163253795658223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 976e687650b979e3010ad20c4e6c081beb7798429543933772a83d06b00f66b4
Date: Sat, 20 Apr 2024 17:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713634822
