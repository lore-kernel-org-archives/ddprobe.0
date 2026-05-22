Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5453955D2
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779454954; cv=none; b=I3oB8HgLwbK1Tl5LYu76jnc9qwgnfMs6TbYS4vgfdq8ZpSjWSqBCTROrS6sol1iYUDzZM4QmY3041jXBV1QEhiMr7TIfxCzqaDi2D+gtQGqunjISwiib3sajE+hZ/SM0fUQViSu3xyQ5CCombCohkFlTwsQwm4qpKOwtT+zcLFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779454954; c=relaxed/simple;
	bh=idiWNe2Vq7wEmY6K+PVJ6siKTOoKA6ffjstUPAuMPLI=;
	h=To:Subject:From:Message-Id:Date; b=Ni5NhITcVOY12vxm/crdZDzO9gLFj8joC6qr2ocZEF3f/KQuyLGmDd9EE6AFz6hTEOoYq7a6C8Id6aoLnGFply9AkmBT6gJT53smzJe+z5F95Ey/z4rNCCZ7hGcmEB/4fAJ/AabM9LqPPw3ic+oWDwXh1a4KL1wKxm6kxohNY/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXEQR52s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXEQR52s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF90FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779454953;
	bh=idiWNe2Vq7wEmY6K+PVJ6siKTOoKA6ffjstUPAuMPLI=;
	h=To:Subject:From:Date:From;
	b=aXEQR52sPD+WXzg8sju/wXG+xASmNbdJfEzSB19QYyM74UY/QrZ+OQj2l45ViIxZN
	 K5OcRTCHm2fKp23aSYW+Q1BQPMdT5U0hL3X8m9XMxvxEblBi+9JgaszzB8ehbATBTN
	 Usj55my+Vw0/EjR9BsLZ7kKiNJFptqJqVBB03jTnCuL7REFP6bFYK3gIMlHKNtinvz
	 aC7tZ57Dk0S7F1fIHETZVYwkm+s+wnMsxaLtXx3gMAlxvDMiKu/mmTmEWmZ+WzhHDD
	 2/k5tC86QDxz+BrW2J/9kchAtG6quguN9izMJK7+8V+i/mx5yUJS4eyJUQxvj/hmxS
	 zk954aOzLvEFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D62CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177945495368.16434.3833897577652656371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69682a65520a5b905b7e151b8e71b02b634fe748f91ead06e89a2888fb25911
Date: Fri, 22 May 2026 13:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779454953
