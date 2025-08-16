Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28474221FB2
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755340794; cv=none; b=EIsmZK8wtHXKEGf6z0t3i4LTX9FZnM05aejqcYJD8JzWDAJ9W0oLjFtI8IRSK823qNd4RCunOByVAHk5lKisJ5ZCY9mAMuIxuznBsi3ApRccqSAxmZNE04khYepkWDfdlImzThNrAecSF0fXmSI2asGaS5kGDdeVLbypZnFw0Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755340794; c=relaxed/simple;
	bh=drgSQ5pqWwSx8U2RdpahVqsk/4rsrpbbIJUVERdlAY4=;
	h=To:Subject:From:Message-Id:Date; b=sb68A1OLNhAWi1qRbuIVtHA5KHRh7USS+8Wvu6gLYffpcQw32AX/5oYdSptKOq9yuBuRYuCO+rHlgwdJmYHVtj2dufUX5bf9j+4TDjvmUlZWBCwqUxIGF8Rx3rD+cL/8h2lyI5qIzWcXoQijgEesH/svicjjx03erHXI4ygoPKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OD0DhKTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OD0DhKTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DD8C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755340793;
	bh=drgSQ5pqWwSx8U2RdpahVqsk/4rsrpbbIJUVERdlAY4=;
	h=To:Subject:From:Date:From;
	b=OD0DhKTiyqkFhzhqICwZI++dv1SkudG/ObSbsQephlXNM25tDFQz4LogltYOxUBDz
	 6T00di2TG1+qeLi+44prm/wi1VG8T1iAR1Fws3AiMommWwNJuHnROrnqhsXD1hF1pK
	 u1wdVG8+ob4qbElfo2VuF4qiNmjEdOLZGqZs3HPA76MYuCnQBrUIBAnkqNnRO8Fzo5
	 Hn/wo6/znWbnSEUfhLB6+gk6/k/BUlKVOI+dxOtSAG3CaDpnoapgbU78koeHLI9WHZ
	 nKLfw42RjLC+QAOlCSkkLTmQcgmW9CWOodrVCr+TEcIMGjHjViGHBXEUCoCSj+aa6l
	 OauADu6YSDS6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D4BCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175534079357.4942.7569082707346330789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1fb31d94ddf6a53383fb32d6283caefcbf31ba646e9b1971ad2271ba6a561b4
Date: Sat, 16 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755340793
