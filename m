Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C49FC05
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708049897; cv=none; b=R4HZGITytOITdy30VTJZhkMhFYt/cPB0vDb4WfXmNpH2XPSZnA63QIhUcevgvNFIT2YnWxMiG97u/4rvGbU3DZP6sHDsoyY3pGDJ5ImlgfdZOofD4X8bVWamhzowc/tRIgTDL/Bwd/uCo8vJirNVuEXnU24q7EEtze9FISAY2/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708049897; c=relaxed/simple;
	bh=CLRhSvPGOGcj7wSGguDRNlGA5wBPxl+Fy5aIQoTI3aI=;
	h=To:Subject:From:Message-Id:Date; b=JAfQwpE5DmsM1fwr+aJkbFqE+7OEz7EZbfnQL+0gvfIAXCpaEoVu4e9t1eDhqbahudE8QU25OidfMPTOkHmMNvzES8FI2A2o/mfjYQ3PSrFiyCReoh23NKDMHG2/cSxTrgRHERCd/Y17rb8SH8lB5HArHBNj5JM2rsP0cGUT3d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRJfNPEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRJfNPEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7777FC433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708049896;
	bh=CLRhSvPGOGcj7wSGguDRNlGA5wBPxl+Fy5aIQoTI3aI=;
	h=To:Subject:From:Date:From;
	b=ZRJfNPEhgBQmbKR0E4quv/M2mHoj51K4d7WF/cmqjo8q6AljRizv8iBWvWjyFG4Ys
	 9L2nN0pHShS4b++uoF0PbYlmhN9vAn2aac6n1NV0rzZyt3lMBBcVDsupcsSLfx9xra
	 BCStQw2IgVo6Wf2PHKjFRllmZWo3k/H3eVizv1piQcaOCAGB2uO5Xr1D+8fUBpcyME
	 VU+aNzftFAlJZp5fRqd0+4l9CndR/XUovHkPtUmb3t/z6wQVjV+pgNBPP9bdJ9Zdx+
	 f7Oq+e6BYGklWSAnEXapmHdT64LZmLtVJVHL3gQMnS3SjV6n2mM9rvd//GuV/bGhK2
	 Bq/1ZD037Cpfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60784C4829E
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170804989638.7015.15867630687523177461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a0519ceaf95e6c608af23862835d06334bb58ee3563ea43010114373439dcb
Date: Fri, 16 Feb 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708049896
