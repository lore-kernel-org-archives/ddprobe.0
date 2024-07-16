Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5176FB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721122523; cv=none; b=H3m98+jZjRkP+z/WOB3bfu8DXAlFs5wR+ZHlNs0dQPJlw/akE58+J5oE23KN83vVhImehs//QIRpqJRbl2oGT+e16Gxu8eKiqAmfj8FFX66iIRkzuOPRrRFfXIXg7GliHruhQ/lMOAVGSSeoMmPnbD63ZQVmORcXA60CKTYzl7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721122523; c=relaxed/simple;
	bh=Q/UPbpoIt1xOJBpleeg2+mXLxjHBRdR9zl+VnpbQD6w=;
	h=To:Subject:From:Message-Id:Date; b=OsUXxR8/Di2c01+WeNxbK3+HBkPVrjZmEHnPfT3jQfn7foLI+SzdDRQ7QUiAa61JqsojumTESqWnWNejjuTDVjkEmmQVlW4ntyan9VpwsJKEZhdXVTaqMIdbgUb370yOQfpi+FRsLvKcjyBMGZ946zMB58TCVDhMNrd7cexy7ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kE6NM+T2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kE6NM+T2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC92C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721122522;
	bh=Q/UPbpoIt1xOJBpleeg2+mXLxjHBRdR9zl+VnpbQD6w=;
	h=To:Subject:From:Date:From;
	b=kE6NM+T2uvUGmiJ1ykU2864U5NdhOvSIfAsQE0wGzz9zO+F7+2w9/MtbdJ2TuEMEm
	 slRuctOqivXTQy7AvJ0BBnBn2U+M6koXNhAeR2tqCSAzzdFoEilxr8Zji7lsDG52Gp
	 bPu6amwsuw+NJ6t4f50wG9xQbH6/w/Enrch1C3EFox7uAs6AhY0IVhUJ/RPNYmyYDf
	 SLBH3jiiyztnSLb2igNfPOx+GFKH3+JXf0gEt5LpmkBAEv5a+iX4qkSyTiC6jzl2ku
	 E1xPCv/IcWeKt/q3N1xQJXAfOJ4/RNW1jhWIb8XJkEzGa6ihb1dINGRuLCdOeubbqh
	 MfXnM1vq3zyew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E77C3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172112252278.17890.11374799014000017932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8948921a88c3409794007d132460519a43edefc472784536541068a8ac2c89e7
Date: Tue, 16 Jul 2024 09:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721122522
