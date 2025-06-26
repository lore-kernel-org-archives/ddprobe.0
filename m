Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4652EBB92
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750949394; cv=none; b=KP5+9Tfm+TfN6FjpamptEF0N4etvYGaPYvUUPqL46PgH5oXryccdoFMD0/bvdFYWs16b1QyF6la+4OI/ZAuU8+X9Pmv2o4PtCeHqKTHr3IzTFRnDkyyCtRJx8dZ9jbfb71BNW4RPRJreUjbZdi1JHN9THsaYj1ONGeJ6M/DXR2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750949394; c=relaxed/simple;
	bh=f5G9VPAg9rzpBqT/KFDNXBh2SCdY5Agzbg6RQXmPbBs=;
	h=To:Subject:From:Message-Id:Date; b=EWRRUqfCDa8w3dOBQ4H0B1u85xz1zswjKTRAPCrPgAAHMcmjXUc/snroaqWQsmzBPnqXexyMPRqhLs0twADHG22gwcbXccPDiPxM9rzG0ZfhwFSe/YfcA7IN1ZeWF5y3RazWdFuF24Gc9zNphuAcqv0oa7qWsC635e2xAf+dWq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxSC1LH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxSC1LH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B385FC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750949393;
	bh=f5G9VPAg9rzpBqT/KFDNXBh2SCdY5Agzbg6RQXmPbBs=;
	h=To:Subject:From:Date:From;
	b=QxSC1LH711V4aC+PapOX59gu4Frpq0VRz6CuuZ7HiJDQrhP/jrhLnzpnzZsiHDjgB
	 YLYoOvQzoePtMZsIXEAQbtoz8HxRGQghnfgCujhF5qHX9HbPj7HGGDivl9GZCkmGoF
	 cbds5HfbnUwPttr43O1v6bdJzCQT36WAsLLrildnasfbdmiLNRL30Mzcp/aZVPMI3I
	 vzFym/ySgWaTAE4cZ7lCUxorIfkU0jO2DuF3gNTKu5VxpOlKq9sjoL5ROUN9Ew5MBQ
	 6cuJOJOH/KROB7CnU69IRFp9D6R5K7QY3em3W38daN5kEbrPSg3tXm3UKuCxaPesVB
	 Zfm2yCDF6yaEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B171C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175094939362.18789.4771715072241100009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 481f4863672dc50a784e41f778ac20065637be9e2156fa304f1b36cebe82cfa2
Date: Thu, 26 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750949393
