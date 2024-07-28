Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C351B86DC
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722138954; cv=none; b=AzJSUfbK0OvyTW3tsN7jFkPL1Ot3WSo+yDwTYSOhRhxu1dCe/AsMAuGj834XwPLzVvioYXf7i+2rhOdyojL0PTK9wA1fOgLOVM+33KpqNjlcfKtAeeOMPb8yxMFDgXl+7jE5slPvLqWO+wtGlt7hjOGR0HxjG7uATB0p1ixrmA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722138954; c=relaxed/simple;
	bh=j8eBbGbIf69NROnvFBaxYoRPrdAOSn0v/e9kJsNSifQ=;
	h=To:Subject:From:Message-Id:Date; b=dYbQ5e6B9YCOTGK2gVhwl6PRHNYGubSFBV+aNpnG7ZOXMRykKcwgkRBTeEEy/9Des5p3yj6EIhVAJ+ab7X2LMrWNc6pmXqsOxKQ0r77yjjqoOZxDcdZYXmpAlFu9zGXyrwN0UFBSIj8EQn84D+zjaat2PkhGX7Ye9iyNMe86jao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGq3Tn+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGq3Tn+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36E1C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722138953;
	bh=j8eBbGbIf69NROnvFBaxYoRPrdAOSn0v/e9kJsNSifQ=;
	h=To:Subject:From:Date:From;
	b=HGq3Tn+YboCzhBZIC3R1Us/CeDjBp7ZtdNW5kpzJXb7/LS906HyO7OFIojgWx60B+
	 ftsL7AzXi8qePREt1tBMurWiBfXRywqnlyhmFw3shKaDxVXQUN2Jf4EaywY9UDwhwM
	 ihtZ1U7aAcqIVi2W2rhy9NIBC+8sF0/TWoyIvw24OVcVNTv9Ld3dR18IvW7ZhDSppH
	 YnyQ6nTnZeDomb8WizOrgQn6sGrM+2ryewZ/TT9J1PoWVCSY1QVzQ9tpsiB/X+5CAp
	 74c7whJQASTFVUQeQAYVCNHkFJ6+Tl6hpNbJpwdyFhERL4TGdhqw+vZY8PCK8bVFPP
	 wNNfGXQaA81mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976BFC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172213895359.26261.484888915264012095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67def66aeca2302c7be0e6bcc4fc04b834657490c15bc3a11cf422e072bace06
Date: Sun, 28 Jul 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722138953
