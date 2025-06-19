Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE5A1DB54C
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750353594; cv=none; b=fKOY7Th17+cHJCY8Pd8kxL3Np+YQcBaJ4ePh42YJoCRKCK9HNO1w2FtSSDCAgOe7tie9edHnRKRXi6u8m3Z/3SLJLWVePeY9fVA+bo3uMIIWTY+EgRcxANt46c9tCBW6avO5hsE8QC0WgFWHjkaxvsfH0kx2XtVu8UsATTrTL8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750353594; c=relaxed/simple;
	bh=Xg0/9xg1lF9hO3vzITUB7yPosaCjPaoAt6Cln8NaI3s=;
	h=To:Subject:From:Message-Id:Date; b=f4f/PiZDE/rm62+tr9nvugTNSO0IWOCVVIImeDjk9Ls6KVPhowYmpgx4Etl70A85xE8WLtcmLcLcO5CYWLUI6Jx3EqXzPQPLe2+AMhkcq1r2VSFYAOsL94wvWjAljuJsxGnmv8lOtcSpkjijkXZB7o+Ge+YsjXiIsqEbHiu2Jiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZa/50Xl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZa/50Xl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4E4C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750353593;
	bh=Xg0/9xg1lF9hO3vzITUB7yPosaCjPaoAt6Cln8NaI3s=;
	h=To:Subject:From:Date:From;
	b=EZa/50Xld6inxv3iKywC4YpHtRJkqZ+SQPntwUZn630avuJvV2e1Vgpn3VpWualWD
	 OWpwDpW6ldRHcN8ioP6JdfLoYfzk9Rk8KTJg5j5PgT99j+gpdMWPe97HBj7cSXfyQ1
	 GMVu7fK0AH7sabM8o9OKaxiYQQrHja5aKvaie/WM9/wAonYC3A5XxST5PlnO7bTtEl
	 l/jMix6+f/aEA6Ih1yrqa4kVElEt2YW7GpaWSuB5n6OuippuF7dCmIKDioTi6LsGW5
	 h2lmWW3AXAR8/4muEFdIFOcbtegagSu8KfTTzWAasVRcARsIhXjFq5G6yr4rMNfN4n
	 B1nlthpZyasOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F511C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175035359357.8593.5643210395557943536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f955ec522d979f70777a821e7104581d682c589dd73ddec11ac74de442f101
Date: Thu, 19 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750353593
