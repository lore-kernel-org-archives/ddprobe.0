Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2CB46EF69
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789472434; cv=none; b=kGHAwoeDIAMY8W5m+iwaqRHjBEd/x5OfY1LI8ORgYK5XNNFahx4EDqahoUA4j3Avye2exrLFsQJ+V39BuskGiPo8LrGh8nB1Ji7EJtE/Qj3Fq/aj5eSR7Uz+foscCDN6X0K4e58J/LdZZgY8wmExlSbA91JKAsyCsfk4PFRfhBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789472434; c=relaxed/simple;
	bh=bN7gh2L6dl1WnX7xcOKkU66uxkpGCcKK+pAxkbvbcf8=;
	h=To:Subject:From:Message-Id:Date; b=Dl3LNPNBMbG6gpRxAG++DxrEu/e4pWUBLAzzueJI4G4fjbxWBWDP4C2KpKJHq6tGjjfXz626Cvtn8rV+eYQ3Zg20dsujdUq9y42Ab2BLVfmMpWqsON6JBtNZLAsg1CyYJljNO2u96JfIHtW7a6DrIuYyOfLUNQ3wvMdzOZPNsPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2GtRn4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2GtRn4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF205C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789472433;
	bh=bN7gh2L6dl1WnX7xcOKkU66uxkpGCcKK+pAxkbvbcf8=;
	h=To:Subject:From:Date:From;
	b=Q2GtRn4hHx660HYzAbUfrpxwxumv63vuWWOT+zBwL7XO/6eqQMXI/e7ej7tgtVDX6
	 kMPRPNYXpCAqSUhkLAISYj2AiX4hJECZ7txYKSs3k3kqcIvQIpL7HSnO/ViegsImQL
	 auHh5W2li5wy4G4b4j43llWgm4D1M5ZV8uG6d6WnZ2vbvbMBd0+vVyymqxgt2nNptB
	 lPgbjTcEQ0hZPQSV82spoLH9C7Va/NId4bLQr5sPD4WxbR6Zx/agTIDIKWN/lEzkuD
	 4jD/+v4e036gYRNEDP3uieEDvW4FGcBjSOJbGMPyGLRgS1cUMK8p3mR4QhXq841neo
	 HTeSPilLKQvmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABBDC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178947243369.6043.11040844791115531741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06333891dd67186ccac644b824d3d17fc43fb738d448f2083829c74321a86642
Date: Tue, 15 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789472433
