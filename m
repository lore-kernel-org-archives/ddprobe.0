Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4496D10A1E
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757891995; cv=none; b=H5T7yMnR4h9dWeuGrn4UOM6QVrIR9BMU3RNuRt3AG33mo2+L3uiyb76I4ikl9Hu1XFY8LWxtKmoDO0en/Qc0Iu+OpOdeo0mUEgcS+AS1WNl9NprqUxCF3G7cuNU08SzYN8fhQe+qu/7NChJTyzMhL4JAEkib2PoYHTuwBhkSdcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757891995; c=relaxed/simple;
	bh=SOOnt0BMC37buDAVxe3ruaOI8jvdNqpOtB/nGDmmA3o=;
	h=To:Subject:From:Message-Id:Date; b=K0g+OEG618vuzBXNdLUFeFqxQeH+4nW/W+U/uUzMayPDXJQxW/1opkr6Pv1nWNWI2bW3ObMqM8wfPq53KKa+KWQW8N+k9+uoS96lYnm5KCLdjD7FWJKVIS4mOwmulgXz0XUQpUNPc/fIH9LgfF3FeDtvxccO1RFn+4dMt8IHRAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwnwKDdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwnwKDdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19AEC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757891993;
	bh=SOOnt0BMC37buDAVxe3ruaOI8jvdNqpOtB/nGDmmA3o=;
	h=To:Subject:From:Date:From;
	b=jwnwKDdb49ob5+cRV0LUgHFeJH+09gpYpnnTmrKKuultlqo2T6N8tVmGh7cbEsg7y
	 jktmc9WNTh5NzP+GwthkvNFtzqVSPSGtRvK7edRIsx31jurc4U3fHUe24gUtB5kQr7
	 wvw6o7yVg4NkBSBDU+5YLE7eAFxsbqRIUgXQEv0QODPDazvkJpuv5OmVud24kSvRDp
	 hme3vWFimZwQ0qsiervekNhGlWpNrQEBMNEXyKuEqyBV0Q8wcx/3KobPKh0p0Sfa4y
	 F7HZSuX1EMJnBa5eQet9d/O9YmRH1mEfcp/e3DSZmfEoJVSELnwlB/eq/9fxhFtZhZ
	 a/f9W/CHL0fhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DACA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175789199357.31156.9420938629057427227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b54ead4b1b4332ce28796575a540c5b3d223130091f0b420bccc27e742fe77
Date: Sun, 14 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757891993
