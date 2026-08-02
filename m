Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49120343887
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785679234; cv=none; b=UbwlrDqK1qzRHeHZ/5HoJA5EcF92ACoaLxrjs9LRHi3VSTohUAIXeDtL9zmwh34J5Mxtj1/4hxAY8nDTX/5AJ9h2lLyUiR+0R/KJ2dAahuN5xkFMiqMuoYQRwdLWOHlEOlXTs3EkJpAy0phhIJ6f6xOht2uhZ6QfDM1NUFXVA5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785679234; c=relaxed/simple;
	bh=h3G9D6/e8HUR2TNrHv/8NGAteZGvPyjDnaqw0YeNDBE=;
	h=To:Subject:From:Message-Id:Date; b=u8JEM68K6tNuZHyKpnuDfV0PI6YAAXTUGxx0m6BDgIEEsZYKyDchD/vW3e9j6/GmdIGuuRmyxltmcZDo6o4k5Gy65TY1XPduW8DWzUsLAg0des3OMENcLUHyL1oM/bpaXYrM0/heFNc/q2fD17dqxORDHARbMA1wQHE048umols=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcKfKgbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcKfKgbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA12AC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785679233;
	bh=h3G9D6/e8HUR2TNrHv/8NGAteZGvPyjDnaqw0YeNDBE=;
	h=To:Subject:From:Date:From;
	b=YcKfKgbsVr704aVkbRsf9fPkUrKwf+4V5IrF4JFQyMI9MdCeGRX04WM0yA58fvc6w
	 RR1Ogr2LnWojQlKbm2cbz0hgcf4J3VlfvQFgkPmWicf4zWtWAJhv0qpGaLZq9vU/i+
	 49SlEjjK5um1xDRfQtfO7xhuMXnAVdqGuMOXGTcL2wK+SVUq4aos6ZxdtUx6ervZmh
	 roM03F57aI2u6oKc7cUKYXS8sKiHmOxF1eX2wpCUIfrCyU4OjvqY1XOxRoe4pRGs9o
	 6ZbTGbKqzv2PeQB9rThdrPFzmRKhDZfJ7fmAvR0KleCHs5//Gz9haDvK2kHZeGuoqO
	 tZQjMuoiyWaIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81D0C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178567923368.7850.13651272596035168285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74de682c9058a41e7fb792f9e89c30e49516d37664cdf891face3118a51381a4
Date: Sun, 02 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785679233
