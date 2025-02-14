Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB34127E18
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 05:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739512734; cv=none; b=ksXXJQn2fLdylG+murX8oJTM2hIXJo0Z+eAX6u75b77F4ovqntxcCLEVQczAnUUjyxKzFEVLg8ozZ5CsIf/cKW5aQ1iGO9hm8jS/IhMsFzeodn2kG4c3/J0vpAbWixNpBMv2gLv6kIq/7zpQduRR/DZIHnkmDuNB6oEdwrsHT8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739512734; c=relaxed/simple;
	bh=WuKTpk2vpZPSqAglV6B1XIcuc22VU5+loqWXEJYCxdE=;
	h=To:Subject:From:Message-Id:Date; b=Yw27l1Gm8wn+D9jfDwxsJJxrBFzSWMiNPaf3X71cEdMOyl506BhK5GFvvkruvYxbSO2FQ9NpMBb9Szw9aidEVb4wHD4QoCC7vHx/Qdpqbxd6zKSgDhWG1k8RVEtuV7LGoG8K1LAcCxVlpukSJzcHeMDwapMiB2rr9kui8/ZF6Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDmwUL11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDmwUL11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71B8C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 05:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739512733;
	bh=WuKTpk2vpZPSqAglV6B1XIcuc22VU5+loqWXEJYCxdE=;
	h=To:Subject:From:Date:From;
	b=WDmwUL112HTO2Li1BY/IcfzZic9N7V+5mFg5xgnuVC/B2APw46qFAiRMT6ZyQ1Mqf
	 cnv1QW+SisCo0tIAysVc0KUgIQhJTAlTTrThUhQdiEG+7eUFbLFolz7P5AZ4wGZjfC
	 l3xi6ECh8cHPAbKLaNWVSdJe1WpVXWcIlE4zFMWIdubP8uM80R+T400yQ9PUadGPCE
	 ogsxBm3k0kDaKGyndisjDCNGyIVhbGdyiAUeZTfzPWlE7FssUy/Z8W4f+knzdfSxAV
	 o0YZmsuPGCuCyVXbQaFPtOaNGdM54zgjdIiC45zZsEvpms+gM9FubqWMIBrLojKRN9
	 jlK2qKuYsRjUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CCCC021A4
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 05:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173951273360.19696.7670980662524805067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c98d815754e6e32691b7b400153f6969828ab438df3acb01e6c93be295f0dfd
Date: Fri, 14 Feb 2025 05:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739512733
