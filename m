Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E3134BA35
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759847994; cv=none; b=manECAIa6te/KV/9OV1/0rkR0vtKeHle9mfVEuBlcEgLmZMNgPP7qy5iirBDQrFxlqfBux/E8lMZR+K7khbFNE6/VEh3gz13zfn/NE2/M4OOI3kCrj41Dkr2Ym9+PIv6hB6TxcUcAw21HyELKWWdmMNjlENIChCB5aTZiBv0GwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759847994; c=relaxed/simple;
	bh=36K0Uv5OjV3dmT4r4/iGm43603hVAYH7k5NQsjaCVdA=;
	h=To:Subject:From:Message-Id:Date; b=ZEODxuVxY8n6P0Gw8jRJjbrPka9EGl9TmSe410n5g7bML8JuYNDr/YdrH5qhdQn7FT1qcUhT2sgsEOzIUiSV2yH49nQxuHUROX6cippuaDj7kD2zW6Ui19WFODWdYHLhQ0NriNapGePjdeYHLqlF10Cg3MWMuqc3mbQcEVcW7Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hg0A//9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hg0A//9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE3FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759847993;
	bh=36K0Uv5OjV3dmT4r4/iGm43603hVAYH7k5NQsjaCVdA=;
	h=To:Subject:From:Date:From;
	b=hg0A//9Wh+E/4lOI87bJQ0ptZrtwBEjZQTUdR6IPT6hT+99va4aeJFyRNORTBSBy2
	 vEJig2rkWCrJDYa8YdfcISt/xlV38u1dev/5Kik6Axb6R4UcvriL2q/6MBHGWnUEtD
	 it3fNStkqOnF2OoU7/FyDk/lC0ia8FvY6yqTOPOc6eLsSLi9LdThO81VvQVEkl85I9
	 UruhWYkjVpQ7gQ177DZ8cSW7BPlTARCH10e03lE2vM65zOxmKo/D3GqWPDfoyilZD5
	 eycamgwmg36LkefuDB+cRXHw+P2oGrf2P8zdCRWutk4lkabUfByn5sG5sh7Cqldmrv
	 GgyVp3001XTyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998A3CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175984799361.8384.13171551556324228324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54a3f6fd4395ec15cfcebc9b1841d0f5c14c4f6b39f3844a053dd735db4b2fd7
Date: Tue, 07 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759847993
