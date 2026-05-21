Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABA63090D9
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779359434; cv=none; b=HEufB8qeWSKz2+0oXRaiv8cXve8zn4t3rfUQv/uoPMrgNEJCaND8A3XzdaYWe8gGBvdHB8OPnarxATU2eqIJvmqsh2mIVQHrWFOfR/xRXYPS1VU2+4bpmYmeiCqyNOIWzykMqc2bzDLl1CWFuxgAXDiEJzjlZy/Ooyx+NlRfS/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779359434; c=relaxed/simple;
	bh=rQaglqOh5mwFuHkldSJPtUJvYtSWLywNmsZdAld74Es=;
	h=To:Subject:From:Message-Id:Date; b=aU7IajScK+c8i6ea13SvuzAQX87KuhNNz2aEdu9kDAXSQ5IOv1gkl4HPOleYBKsGeDqHydtjDKqi1RFgzZfjJyu5YyoZpJNOLHm95xRB8X8UMdTd2XdqX35ig7WTD6m5fWV7h7GhoVyQiVRVa7EUKXGdXEp/NvmhJ6nROvBOGVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gk8LkZGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gk8LkZGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D458CC4AF09
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779359433;
	bh=rQaglqOh5mwFuHkldSJPtUJvYtSWLywNmsZdAld74Es=;
	h=To:Subject:From:Date:From;
	b=Gk8LkZGlk+Lp7Tbm91hwBpgNvfDVhjlLYxxB0uo6hFdL2yDeRq8amhauGL/b+DOT3
	 FNpofRzyGi4U0adgg4puTwgyx28UDsL+YWAa0vV1b2FiKBf0EhCAjG12j2Hu7b6/0A
	 6XNbByqf38gpg0UHbAZHEw6lnWLCot8yDEQk3I27j+zILn9FwlAue7T4t8+8kvDX69
	 a03YLcqL8bUQhvjXEbxlJS7kgL8LDccyWYvEJihENBQVJElOWyaByuJYG8hXm/JMjZ
	 cwJorVbLEZUg4FNMC5fA7iSbDAJuibJyWvty6kXm5GkNatV8V+Am1jSurkCz3sPaRa
	 wKrP+SdkosHzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA18BCD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177935943375.18424.13387643020930331739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65d0dd7b526f75498a614bd8129c3aae4ee786346da547043aac5bc64d2d104
Date: Thu, 21 May 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779359433
