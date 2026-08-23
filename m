Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E17B344DBD
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787500834; cv=none; b=Q69vievaaaCRV/OLdPv2/bL/cs7R02YbTyveC6lGoBw92S2js8skNTjRlZS8vlWuqmQdbArzpRdPIbBN6osH1zYQ8pH/tjGVyYDA0bZj3+Jum6zAiO7CocZPuXgpj76iFpNdz4NDktdOUnh4eaHRtUgL1PGC23SVul5T+HyimD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787500834; c=relaxed/simple;
	bh=NVxUAzPc9w33tZyxfSZsHU9s6TZVLjBv+nAA1TRqgM4=;
	h=To:Subject:From:Message-Id:Date; b=REa9aUZ9Z+2Kk7lNyhuoYiaNNi/AJuhCrHO07noGD7p2QaQC1sr6mmntYtBnJfPaVtJ+qj9bcqsyaFhgJzxPlGNA1Dw9J075ghRnD8F6+zkyf4e+T10zcq2NJ3PIc9554vWzgq8sUP5uNeyqtQyYscONbfFA+XT9nKd6myBQraI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRmYBv6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRmYBv6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4E5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787500833;
	bh=NVxUAzPc9w33tZyxfSZsHU9s6TZVLjBv+nAA1TRqgM4=;
	h=To:Subject:From:Date:From;
	b=uRmYBv6e8MKHTKcBxwDfEtktN9t2OmsG6Y9wW8CaAWL1q8sxZm5SShSCe9R1RDXas
	 /FaJaX5IdYT4iDzXQHyw4DALgIQzEZ6k6j8IMyP8y6SZDdmcSovDqNJ+DnT43rjL1X
	 hze3uY6jbtSJ/NLJbwqtaap121FGF2VzRIxIxaC7thvinm5slg+q86+exYnkYhnmC6
	 elhHgHjqArfG8dTtZ62pMcW5QYcYCmZtSeGDotq6Rv4M5Ru4Xroo8vaJ4iQsc6m71j
	 XPfSxxDSpLVQLztB7kmVz8qV2B77KCC7vglegPOEkzsVGI4G4kYeIFUBIlP12Ib042
	 GPNVmVZ+eKSVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA743C5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178750083368.10367.5249074577677689193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff3acf1aaa3f1a43616e3b8330d517f7b860f398e3519a3170bc2b904e09b22d
Date: Sun, 23 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787500833
