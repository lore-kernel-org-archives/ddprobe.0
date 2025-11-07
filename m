Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D05431B806
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762527594; cv=none; b=CuVUZLrp7eiP1VPG65BUQO2cFvPXuUwa2zSkXp+NMQxKF5TyhXgFywytjTMSrM987AGrtuYEmm/eHLKLB1WlmcHNLcWrb++qTPEH2/OjuPAlWjnCA2VKoSVB0oYdzkCSVcmLgj4zLikfNrKCHMPGry8/dPCCSHkHQx4FZvvO7qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762527594; c=relaxed/simple;
	bh=+6YOoVbgE6pMJJ544fB4fEOcicMFiWJB/PoDCLaLhyA=;
	h=To:Subject:From:Message-Id:Date; b=JAuam61ywI8AL7hl6KyoYmPtPQW+XYFy+ArKCEHwASthDKSTbVYDYDqDhwc43beQ00R6I/OC9u8Jx4cq50s+fGuYpjRIWxM7xA+0pUdIHxtnCC0tltKoPHcMxIuLYYx88/oSTGXNkRsuYstjH7AHSGtaXTigthBmMNBBcCGUTwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMs1hQ7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMs1hQ7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E53C19421
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762527593;
	bh=+6YOoVbgE6pMJJ544fB4fEOcicMFiWJB/PoDCLaLhyA=;
	h=To:Subject:From:Date:From;
	b=UMs1hQ7CYEF0WYWpqzU5kIdV/nMH6QTIax7HXRb8a5Vhl+mTEmtqeoWt/XQYO+Juk
	 7HZM8s6+v473104fCfUTlU3Hemo9U0LIpU71GG0OTKt95GOhxpBJpy93EAXE+t3pq/
	 b34BtvQw/FeTAT1Y9L/gKnougSsDhNfAGnANo6d8HdayA1ly0CR2VDEDpYVVfoVg11
	 COzEDEdrgdPaNGU34bTm0TwhwNqm5nth/xnSmvLd7FhtvbAdVvgz3UWVlOdc/FT8LX
	 5zAB6bs6/gDHJj2CNhkIYf8+iaRvvyB0LBIj7RPng499lXsiK3uv3ZcA0QQnWvs2p9
	 MrHPHd8h5jlQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9321CCCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176252759359.26533.14542996698156987799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff89840e2701839f7055a7b47502adb6c84f9ff83f556ffac5cf66624201bb95
Date: Fri, 07 Nov 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762527593
