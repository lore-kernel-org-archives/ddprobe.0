Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3717C3B6C09
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782137194; cv=none; b=CObVA/a2+E2jU/STlnAzY799aNY/3LgmSMAmzOVdVTmMg8r0abuVQFdB8xdyPXW/2Kxn4Zr+tFtAtbaUqs8jewRkT2jbvmNKgUXyR/A4b0HHvWN46J9znSLbRKDF2bSPe8dpMrHLnPS1hBEBfVd11zjlq3rpFNFtkhGDwLYEOM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782137194; c=relaxed/simple;
	bh=hqrj2XtfXVCkVmiPmzHebN4GdxoSovMmieZnDgxQmt4=;
	h=To:Subject:From:Message-Id:Date; b=DAo35adKu64n4Y7iBHU6uxIwpR1/GIu0NZPxrVl84oDBW4gMbgBcjNorRU/UcVIVopC+5Nd4S/lBRTmSHJkJZLqGU0cRi4MP9t9U67ibB0vupNxO6y03xWcxakGKwoLF4O9GhrAA9ik5Tvk0OjPG0i7mDO8TjDBq39WfZDAAtSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwLhX4jS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwLhX4jS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6316C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782137193;
	bh=hqrj2XtfXVCkVmiPmzHebN4GdxoSovMmieZnDgxQmt4=;
	h=To:Subject:From:Date:From;
	b=WwLhX4jSn7qMUKa28ZZYJIQSPMIVBl7uO2cDtdECafaalyJYVaUdhm7evJVJGzq3m
	 XEt5w5etpAaz5yNjPYjqQv0ydtck/xzvMUfhh9djkph442sOT3wJ98qdiG1IizgpMD
	 CQJLuWzv2ORTR7Wrmz0+kY8HIK2PxnSOLFjVP+Wj7l+K5VaoD1LrbMfKfRBbm0Bix4
	 s+gN0SBolDKi/VuFXwoD4Gk/W2hmHJ+RkWExhw83LA9ZHrJCG1PnJd2AokWpzZ9c7k
	 tf+QCsTMub65GT1Wnzn2VCPSXH/VjArwqi5D1pZNozW8gqTXQiTslw+611lzvLx6cl
	 /oBh2NWgNBJ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4025CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178213719372.23716.8442731654595989353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e4530dc1f7dc3332423e416f9b580fcaa7bffd6debe14ac44595748dd2628bf
Date: Mon, 22 Jun 2026 14:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782137193
