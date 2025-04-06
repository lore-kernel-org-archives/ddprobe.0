Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD7A6FB9
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743908994; cv=none; b=AVI2qeOnxBIFP36G3PhnIKA2sDp0mBCBEDT+4yLQtGJnfCZTnNwGPkGYTm0xlZVkq73D1llkWER+wBvrC+ptx5/cXkDNiN5lBJNGP277BEQ9v7aNhJJmRmSHplhu5z+NGi6LXDBlMqDvmVSez4KvhMgpBz3t2yu4bkDUT554DFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743908994; c=relaxed/simple;
	bh=kvQzBPTfBzEQDzTuIJN/MXD3NhwhHILn/SmVwCtv1MQ=;
	h=To:Subject:From:Message-Id:Date; b=ui/AynVmJYicLV51C+54IpFMcvOeCg7Kl05LtW1ZIbbkNgV+6vjw6XhUgdY0siLcZ9gi1m8BPxeLIPEu4k7l/+UqU0sCFVkVBxecKopazsfJEVclSquuF8DRZqGs75Wf8rwfSkP633JSzyaGgOIl93hS4jbU1ZTnkPjHoO1LgFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiiAJ7WU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiiAJ7WU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1725C4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743908993;
	bh=kvQzBPTfBzEQDzTuIJN/MXD3NhwhHILn/SmVwCtv1MQ=;
	h=To:Subject:From:Date:From;
	b=CiiAJ7WUEu0gs+KrJOln5RLnKFHXHUzVC8s05aPq+ijAar67Fz9PraYH3K6ymNl1b
	 C/BiYty3avrrERDb8Zy+MQXeCR/WX+l1sOU1/YLvvmfW0PaZfaTeobNLg5d0KsOidV
	 JeyK84J57TrvUO7RG3wPX2m7pdvM2LGQgSZ9kPgO+J9sSANCl59EJgrhdRLo1M8cDI
	 8FPqrMc0qk7vH8o24ibAtTMQdw6PkJIl0UmE2e7ywzu59bXmpGCPCFzEAMJgoZQlyM
	 +nkQPy3LexvS07dZbpj3Jj3pdbRpuZjuZ7nPftSA+XEEPdefO7hS8PdTH+IbmXWTT9
	 SrIVyBzVNKUhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B346C36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174390899357.10381.13974657399619220559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a818bb010338e307c17d5653d3900e5a354e5a6600f10961e589334d28a7d390
Date: Sun, 06 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743908993
