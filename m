Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD6B42A8C
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745132394; cv=none; b=jDM8187dKtwozf8u2E8hAedWMOp/zDRUntXEZtF3hnUTchDyjobHh7mqvy/r21q8/LX+4JE4yD8p4JBQR5SEf3XE2EzTiEH0lbUVvyztQs1TXJRYb62bT/Av6kDxc1Z6Li+quwL5oAdifwJWgpBgUNJ3lq3MFl9Dw0vv0Uvi8sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745132394; c=relaxed/simple;
	bh=OBS3BjXwIZ8r9+nMlmue7MlQFPDVYDxrYHTMb8bZfd8=;
	h=To:Subject:From:Message-Id:Date; b=FyEPoYOzDufsgd1CftrT4ZIpDo4RHyVexCXsTszGYJ2ijh4Lwdl8ylRIKVwajQgkunNceOtCTh/LfJ8JKdTQfif+nOXSldt2rCPUaXQM//pojox6DrpKygDzMzLZ8ErTyM+Mzs5xC+EXLumPoeJgvTEXWaH5Ks29YoYpJrGciB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sv6poLBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sv6poLBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70A5C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745132393;
	bh=OBS3BjXwIZ8r9+nMlmue7MlQFPDVYDxrYHTMb8bZfd8=;
	h=To:Subject:From:Date:From;
	b=Sv6poLBvsrj2W/1H4+8+GnABbx6r9H9cDKEeU1jp4aeFfBRlMT6feKhkplRLOqcyK
	 YfDO8jbI0B4sMaVKbrz6cX4MHThjDnIMr33VzmGVXe+LjbWxt9aEBgyy+/eiHed6yL
	 QRqLgSmvWv1SaJ/KE1ITJNHjvs+Gtuttie0R1HHpEv+OiR9bnQH8TeawlVIaO913y/
	 ocJkRPr/RbWKF0uzJJJlxx17qIaGBeHyTCq7uc+5ds6Ff8rRW9ciuG76DtiJ/rmMwt
	 QlXrHFW6AjmTSFb+9lNcxauIYF5hIoFsHA7Wy6VmIZAe+MIe8iHDMHu8Ucewmk/S7M
	 OaHjqycut1DtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A6C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174513239359.25244.15571892125906812909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf75aa7355437c0b8647e8f370d3cbf52eebe990a96db5825c5a5ca862ff8ee4
Date: Sun, 20 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745132393
