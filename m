Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300D92AD11
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749346794; cv=none; b=f9+hgvxb2GW5GiDx8tAm/0ejAhyPv0Uz7++YILcedtSgIB0/mmtEWTys2oYfWLUmHWSNVAb+Ks/liPm/Ui0nysuRrHCCClq303WmsbVoyuAyhPkf73QhEWVjTGwkb9MuTNpJPbyuvOu58/Rgp8/xIQhuXC4RkU6GxsiY0VKMByI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749346794; c=relaxed/simple;
	bh=jYV2mnK1xQzs/xVq/2gwtehxrn9y8rXsFzD6Yq4P6Bc=;
	h=To:Subject:From:Message-Id:Date; b=kP51KbB1XOI3+f8zeGMLbZsyUgx902DKpA4rPyGpIDeqbN6hq7x3/lG3TmXsNOf3T5VDoeHBuTwAZgshqZ5HN/kuG0H5IC+JFZkw+RBAZ4B1YfuHx5EiIyDkUDP35fcgh6cS/CKxHHQMZW72PWjF+5IkRUL3n2mtvLTai02Ld/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLEfYAaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLEfYAaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B1AC4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749346793;
	bh=jYV2mnK1xQzs/xVq/2gwtehxrn9y8rXsFzD6Yq4P6Bc=;
	h=To:Subject:From:Date:From;
	b=gLEfYAafvKduXG20fCCF9OsfwfLtkntEFMRj/ssU7shLe+gtZJ4LLhQLozTnLWZWW
	 6DdoKrxamLguE5hQgUwItu00sonGDH7ZnbhIVx5Rt3ySPz0xKPkhhmGDKeYrskUedy
	 jpv6wKboAG6TEvj858aNkYrR4gRa+SADHR7R6X+/WJULxVhGEBVnv01/KQ+UQOEI2N
	 2YkVkMWi+5+cIpGx4cOg4vt2lPAyh6LodQo/WD43YGRfiog0QXMI6H6jn9ZVQTlCTc
	 kuJFRllSCZDDgZdJH2lsughnEg3cG+TRNqsvjJ4QKLc88ZAFmTdQgcQRc7oO3jV8nr
	 azkWOcHKB71sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C1C5B543
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174934679357.4157.393243238056616740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99c84d92e68ff2f4334b05b1a58bb046c31456e6aeff5d80b10f07905359a900
Date: Sun, 08 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749346793
