Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239763EBF01
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769362434; cv=none; b=OfyFuwF4JNFV8pSJuXLrn2mbneuHYBomJ52E/NTK7UamlgWVq3De+5qQx57ey3coeZ+ARg6itxmwkdN/muGzUSZussKDvzeImryBRxBoCy1yYgh8l2pu2cm2/1d9PYEtaBIwznITOAQx5ck75v9F0v09nJSbi3GbU7l3K2it1aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769362434; c=relaxed/simple;
	bh=AknZZdnEiEKDrRNxIWhLq49vAG/JU1vh+5X+Y+mw+PU=;
	h=To:Subject:From:Message-Id:Date; b=U7Wum9ETmPDxgapVHDq9rfmOP7FIVLmwmUt1tdW7yDQo2U6Y8WDtGrf5y4kzbkRCWiZooZGeWXs4Jjk3eGrKEbgttLKs32sNXJO59qNW9Rl3k1NppYNR88wA0GSAZTNhNKoRMSwBfC+AUr7ArmHK6sNLqQ+BuUWAGwuFOAA6KEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeAenqyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeAenqyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36ADC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769362433;
	bh=AknZZdnEiEKDrRNxIWhLq49vAG/JU1vh+5X+Y+mw+PU=;
	h=To:Subject:From:Date:From;
	b=FeAenqycfWWTTRhKSxG1A6BqPsprQOBDQq1yMkzWSWWxLXTGJZuEn0snhCNxOkkbf
	 sYsOumPuD3zDOwXwSvysFgZVZ7TrxeqoolHyVNrGhvinxB8GvJ/QZwkS9ZC7rHwfRP
	 tlKZRtJxVmKCZmYUc2WFa7Slo1I39UNOD++BQtuZ2o30nVD/rUJ2wKG8KQRMKfpWi7
	 sel/XQ/367y8EOFmr8qn3jD7kmTnIa8/MxXZ4cAL/Jd6o6XxMUY9wnuRM5rbRooF/l
	 MJl9ZKNu6hfjIhLlKj1Or+nQ+QJTd+in+x4k1pee9ByY7g8bkJCxyZmlRAuumcRDnr
	 /bNyw4fVklsUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58DE63CB4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176936243357.20205.15770477866619799213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f684ee43aa1aeb758087502615a535a37e7adb9e79646ae85767c429640b79ec
Date: Sun, 25 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769362433
