Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469E31DAC95
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748108394; cv=none; b=nvhVj4emUw81v5URAaemyp/eY2vaUW4TkICeQJew16n40fkDkGzydBQNLGavVkhxTmiumaK6ji+JQkoKsQKB75Ar3vgPJGioSJksuq6AzsQ5Dw+vz0I3ClsTUsp5MXyeC3WkAd+qkCoanbSgmkB4bAetmSnqGhZ5q1c7wCnf3to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748108394; c=relaxed/simple;
	bh=qKrYyENy/PaeoT+Jb16HEm2Wra62FzRTF4iJ6DzwDMM=;
	h=To:Subject:From:Message-Id:Date; b=GdPJcqT73omOPv72Pk2QfVS8A8hau74fii4Hyg8AJNcx79E7r+i2mEDpss02qkAs3N9xjn4UpHR8q7u+ZLRNs8hyV1idZNNI1W3P22JeXb99qmdmbM6NmjvFrkQ5hNTy4x0TsJkygiF8+Nx8JnoEGrP9LX6J3UrPDrMBOKPLnmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9Tbo60I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9Tbo60I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A073DC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748108393;
	bh=qKrYyENy/PaeoT+Jb16HEm2Wra62FzRTF4iJ6DzwDMM=;
	h=To:Subject:From:Date:From;
	b=O9Tbo60IGaS3TjsAckhiuZq8NU4j2zQvACbmQwXep7/A1sWDMQwXQgw0uAGLvW+DP
	 MWXOnjEs2McmT9LLvOIwQAT/5Y4yT62bV4hKBVG5MEUltEsNX9vm/8FgYW07Hp8Vfr
	 9H8ZN4/I4bMM4MKXXefA9rB4cgGoV+5Bav/9uoJxDnYv5UqtUK9XsTaKNrdZ25cMUA
	 NI+5CC1SQyK32simw/9c30bn3+ALjo8SMNKYPgEPgfdvXqcKq8PqXrrVS3D2Lwo1yl
	 K4m2IhQniyv4DqicidqGVhyJMo46pJ35YGL/0jAN03AXxk0570q38+n2mKEcXUY4Xa
	 TbZBS+lemDUOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3C0C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174810839357.12358.17224574189926405112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9998f8de708342c548d479ce76f95a37e64e052ec61a869ed8c1e73173881924
Date: Sat, 24 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748108393
