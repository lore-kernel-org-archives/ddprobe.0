Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E6B126BF0
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729416354; cv=none; b=YxGTaVZpyw0dVNWWTIX90zM6hrHbCMsYGgAIhlrzyJ0zKr3I7qK1ITqCI6TvIjDE0W2xK2zvv0o1RRS7EpqPV2OJoeHyNpIAd7AQxKQo0TKU+CZOh7yqvYsBTV9AvaxAPfZFKJdfh99RGSvmy8OHW1vTHP+v+WPEaOnzG9UeRxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729416354; c=relaxed/simple;
	bh=h/4n+zqmX3l0ARqwN9qt6NcyidEBwULm+F9AAY9DlsI=;
	h=To:Subject:From:Message-Id:Date; b=JUc7kjRFl3MSc1m45Q8l283hgGbJjnEDVbGj+r8QoCDcuAjhnrrvRA2FlHaPD04V/8cNSY04tv44TYQYEfAmKb4buHdKaQEB10ODxe67HRhH6hqHAf6+m5jlGIE4Y+m86sHd1EKoERyTJ9UWy5W2GHGFFQNXJh73Z4/i/LgnOE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYx2VQJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYx2VQJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2BFC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729416353;
	bh=h/4n+zqmX3l0ARqwN9qt6NcyidEBwULm+F9AAY9DlsI=;
	h=To:Subject:From:Date:From;
	b=FYx2VQJ/SNbmwUNrOGTXUOHCF+/vbJ6Y8WR2dDWouxkb9Ag/TH2DYvmeevqr64DuI
	 C2bqlywgGG6QiIlyPNepmYGdeVqChcAvmIBpR5SbXOxoo6kwp4HGFSX5/odFdKVvIU
	 LE+t+eRjIeJvNaPMp6D/OY4qu6ePsaXipdJMQxOmKBMhxYOXO/puCg1JhZZwz+9L/y
	 aI4fgdQqHJieM7tb/7cm7MYOuC8moYAFVX/qgf0PbWHZNpPPDszJvMMOjwz8NFii7b
	 mzdWM06+yFHpMO0Qr4AMVDn2UX2KB+Du8qGHtAiriZwioF3JWFddLZ8HoVcqTeumOO
	 cG/I1h7VtZ9uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6DBD3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172941635363.8964.17758043769630747332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9d9257eee9c331fc595206e015b89ffa439a3d52a84653002e075a57cb5d9ec
Date: Sun, 20 Oct 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729416353
