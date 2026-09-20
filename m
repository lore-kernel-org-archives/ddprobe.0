Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EBE4734D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789930834; cv=none; b=fvknzlKdNVq8843SYLApCHoGg+2OXZ7pPI1XAyw0SX1nXX0gxqGCSRWg/w+cn7Mh3ZnyyVhFu64jvEvVNIFLkH32HtxEtsCkrn/glvypVeOhxkLfLpshFh3lC8qi99G4fUCS09AUDPFfgeOhH8k45vcnvKX2+A5guTvWLfPzWmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789930834; c=relaxed/simple;
	bh=xFEXAC+TzijFxD882TvOOY30Ooup/gExIabgA+K4i2o=;
	h=To:Subject:From:Message-Id:Date; b=g8xg9tU3Cu6QH+r0lWsc7RE3AqQxXbHw0r6UQxAIjWqWMG/BEjpbwdNAcHxt/3XYhlR+qSKgZU0rHgjPoRzfSbrVSca5XynsImIrPYK/yQhbS8dWofLV16W2hcQyDgMFdoTQzA/kBG5/hIctqY3zEgM7jpx75YEpxCFsVuWQ4uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/NhGXAS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/NhGXAS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE2CC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789930833;
	bh=xFEXAC+TzijFxD882TvOOY30Ooup/gExIabgA+K4i2o=;
	h=To:Subject:From:Date:From;
	b=Z/NhGXAS/lnlI0YbK5Te9qR+kBJVZrnA99RC7zawqIKM/jALKNRjX1crWOVIbW8L9
	 kd2s8x8qYvHxzaKC5xxmz5Ea/xa77Kc1BKSpudzokh9elU+DMxzg447CZiF7D2T9Uj
	 f7ebks8E6mBPrykQM97pTqwxrSLi5XAeOxUCZSSdBnPUEHRRo1nUWQ0XvCXjw10K71
	 GpeSTZRNEHbcYGhgqN0jiDNJRchLaW4+aINYD69a2Yqj88eJaqerPZVRq1FhU9KRf+
	 66kn7pV54gXimW/TVDEOG7S27o7AItzFeFyUYlOFT0j1oddHffHGS3hZpC7qotUwyZ
	 AxpMQI6kFiPxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B29C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178993083368.2282.28666481647269901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fcbe590a3a0da96c08a5d9512961090d6675d06017588fdf1bc2aa3669fb4f8
Date: Sun, 20 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789930833
