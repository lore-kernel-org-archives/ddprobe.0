Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087C67763C
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708451897; cv=none; b=tq6WDSEDnbBKEWv7UsVxmC9vJHGfrp0nLu1laq5HryRhI9H6Pus5ibFHk9AaypqZE7TfRdZdIHz/n4kvRLMbpvCfIXVHTv9Oszbg6+kY6kqDY+pMvKRvSwLMopXOSEpq3TPMBv0YqZan+LuuK6Fd6jtorXMsN4s0N1J4nCTFvmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708451897; c=relaxed/simple;
	bh=oMqR/psw+XY2UOapDj4fXrgR5/fiPym/LTLsYbFt0XQ=;
	h=To:Subject:From:Message-Id:Date; b=lThS5k/KiLb49ujKTXD/Hvw5cPe4e0SO4DzDlyXh6krT2z4t5mzdRRpGzDoRjJwvICbQ8qEsDXgPZFIt9X9LmCzz0tUp4PNRVIwELGJEuckz5edX0L3aWECL/o4aUCNiMhNpfW+BoOxWi+LVa+ctiUlRKD5I8BQ7YZNeVoPJ13Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwRtIm8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwRtIm8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7904FC433C7
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708451896;
	bh=oMqR/psw+XY2UOapDj4fXrgR5/fiPym/LTLsYbFt0XQ=;
	h=To:Subject:From:Date:From;
	b=ZwRtIm8sOOTh+YDn4DajN2OEsc32kYXlaBd9di2Jk3DW/N+HrVDkcEy3EhrF+uJ1N
	 14+VgmBgdctP7jDrhHlt/Fquw2vyhzsZD9UVJXZZDjfEsP0q60sMFlRnUwDF8V7lYz
	 iEH6snrcnwYYIB0Dw47fg438b/bRJaOuHa7yq7FE2vMfwI8HZkdAcWPu4R91K8te/E
	 dczOW1yIHbhjCWIO7Y0mhFxaW4ZIdBjFJ/rHNT7u+UAarySyVYAda4BqHqH5zUPsfx
	 XV8hjZAzd/ZmNT6skBNHDZ+C/5iJuo1Ig5kQLc5QBJfH1DJFD2Rrz76BOx4Z5J83JS
	 bN6TBjpeYNicw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BC7C48BC3
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170845189638.22728.3702763430112546649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d65235686f20a50e6424c470b6ae536352482000d4dafc5fff0283032019cda
Date: Tue, 20 Feb 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708451896
