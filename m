Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2968E25D90C
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749531594; cv=none; b=coKakWBiU1SD1TNb7h29wSQ6MutpeLXOiX/AjnBTnUu+geneT2n5TdhFfk+NwUh2BbYuQdhbG8lRAbpPZIe0h0gkGt+nY79ym08PsPNXiscOYW/KjCsPqBzS0FaqsOSUkJdqb4GSBGtXpTtswYXnRa7pq0JjIxq9P5HOonItpjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749531594; c=relaxed/simple;
	bh=YxPzJf/zEHp8AzD83uuGjQvC2Lf1tO0aCDLEAg5Nn3I=;
	h=To:Subject:From:Message-Id:Date; b=VVLI1nHMqwkNklU2WDE4gA16AsPLs/u6sBp3eUVsdUCFCcvilKHajxseGFDAb08ysjILTDPYGIhcJ2lXjw53k1RHYyWxoysosy5f7i+hPsHa3Z0j4dRPlNlg3e/t1WXP3utY7hTaI92Pe0rTeWu0OTCepFlbIrIMHnguF05w/Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWQ5U8g0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWQ5U8g0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D71AC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749531593;
	bh=YxPzJf/zEHp8AzD83uuGjQvC2Lf1tO0aCDLEAg5Nn3I=;
	h=To:Subject:From:Date:From;
	b=eWQ5U8g01HFYu0rpHL9UfRYKrPumwdcXCnOK4NPYEgvigRU9+6fdzBZWzIsEZ+5MD
	 bjS4XjjvBjyaNKvJ0y+T5spnSNPHpvltvoZ01lk5qM4p5qTGxTdVl7GDfdC1ShKpGg
	 EzrNIFu3fsc0IhEggQMivms70z1DMuqJR8rUcUIII4qvGY7sCoJ5A7jbQwRkzxen9d
	 KduvhiDWC36E9xvAnhmumWlzGIRSHV+Sni6r53MwAnTlQ9O7qwXfgEhkmkiJvC2DUL
	 x3EDYVSBpdncnMWMme8Cdht77xIOXy0Cl2vA0WUho6VV1qOaBiJGNaeG3tifTXiqT0
	 3ZuALyq/WwN+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF23C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174953159358.23910.15138756084340823447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83707d8d053cfcfaaeb4dbde1b20f8dfd6f1c0c0234a6ddbb033a9aadf573036
Date: Tue, 10 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749531593
