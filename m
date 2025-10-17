Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334222E5D32
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760702394; cv=none; b=RGu1CpXcfpdeS+Xb6/lhBwkvJaF4DpDNCoOLi8Pwisu+Xr9F+P2HuOvcc/TdHLnr3878tgiGLnp04FDHValK3WiH82iLA12YjnVIrTKwW0vx3Cnksc9cBrwWg5bac//9vJHwmkckH+y7f8Tb8pp0uuha7TJof1g5T7WNdomxGQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760702394; c=relaxed/simple;
	bh=5Xi6YqrmTXRKIdmn3+q99d8q3WUEHMRs083PKDaRsGE=;
	h=To:Subject:From:Message-Id:Date; b=JLUqcS7qqXVaOk/Dt9H6PEI3OBieDINC1+cWWQ3GsPJDnV5HQsjY6xWReeD5XnH4WFmnO3aPA/vYK/t7UtmkOV24LxFi3s9JfV1Nou/PlHEAovX5nWKgqYcL1bR8i5+8GC60IRrIYv2U3HYcQxqUU1ITnio15+rNsfhroMoNMkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Atv2C3Y2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Atv2C3Y2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAF7C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760702393;
	bh=5Xi6YqrmTXRKIdmn3+q99d8q3WUEHMRs083PKDaRsGE=;
	h=To:Subject:From:Date:From;
	b=Atv2C3Y2XdZHNjxVMwv9pAn8VipYbFExFUxCCbYQHyhX1QSORwHtnN3M22Gf41jPm
	 gJ88SFt0GY5elXjt+yYCLDkxChIDE+CoRQ8+cpuZwuRJn9/9xK/kHjsKqJmx8BxaqV
	 HYtLiy/0wYdwDm4ekSKbVTgHTcf1b4LHMWHATwE8904pWUqVCZzjnTFDUmB9dXgKq/
	 4v5NBvERE6ePTcIgVjmlJML95pXJ7WhFUOgB0Bfa/yjBIFBQFeyiru/hkEVNHQLE+t
	 FJKCjKC7tplXlXrsLAdlcIlSKzUXDrw1zjVlvIhGz5XapPfrInfVae5bzCAteGUqnH
	 AgIps9YXREIqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAA5CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176070239363.1326.17956238076872728435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a898be81c6fdde15adec2d788a0490cd1626bd2b9ae363d7001770292d40139c
Date: Fri, 17 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760702393
