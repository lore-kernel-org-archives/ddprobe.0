Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B63394785
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783598914; cv=none; b=YjunKHMwBaG1B7cr4a/MnBQ6gowYI4g35rcPjWqL1T583otyALBZp4xpocV1rokHmldwpgEpvxjo9sJYgA96mRzgRNUP5aLeccDS3Er0P6RNUx98tFswju0UTy3UWmlG9jVfVCYVL6qWDnKu9w+XlAgHuLKKon+JeqE5Q+I5GsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783598914; c=relaxed/simple;
	bh=MwJLh7zJXGcavKd+MJEGV+SlbNFHDplHiYCVxhoj7VA=;
	h=To:Subject:From:Message-Id:Date; b=E8jihV8Qz+D/QOsLA86uRMTax9QvOSb8ytB7u5Rn7MQ+Gg3X01U1RZXjUNdTjCYvskvhpPGSzhIaorIwQEm35UtOqAezSrgs/fMTJHrYdrfk+53DSbE0Gk476NUmLMPQXZcVN+TrsgMv1i7WF6eHKbCxHA7kWv/2vG5nEYdN5G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSiYFBUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSiYFBUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5E0C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783598913;
	bh=MwJLh7zJXGcavKd+MJEGV+SlbNFHDplHiYCVxhoj7VA=;
	h=To:Subject:From:Date:From;
	b=QSiYFBUfaskNoIMKsELQ0LMHn2Za91idFEHZ15AlRiqJ0AtXejYK9ZDyLT1bRUpMP
	 2sz6rhxcGx/E/LjduwqMbVfdOBLtQ595+41EQ94zoynoRf3UWh2xBj2+f5JD8bpj5Q
	 sK/meVbu1QdpLfuILPQL20MIfnOEbeUphtIO8dal8OMUCG1R/Zof3O+KWNPNgHC7Gi
	 63+DTilZ8a1KerBZ86j+1lXF8IfoQ6+h6y+YuX5IuiS4B2c5CSVp63D4FSZKE2Wy5k
	 /EmXvWx7wWzqN0YOLcSpzX00G3+SSLaAMKFAWtlHe/lfB1tk0kCp04Vs2yf5Km8jjY
	 ixMEtIDHS4+WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A68C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178359891368.980.13839565233555430977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf09dfb899120533746738c71c8a46e566798bd6a2c444824653525cb20820dc
Date: Thu, 09 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783598913
