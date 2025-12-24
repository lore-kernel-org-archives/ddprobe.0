Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A47E2EA749
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766580834; cv=none; b=qCFpv5ZzdsxEKwPJ0Vu4vScxT95kI+fkqhoVZUEpjbKw5jWvtmR1hZ2/Lmxw1FvdIi2q9bPHkv7EHWapaEn1Bf6odWKd674PIsjItWI6L9zgAJxzSWXE2uyHYhJJdPeVe8DUQhGk/yJSN3OABD5RGDKaVc78U6GnuD0t/YRNKjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766580834; c=relaxed/simple;
	bh=SE6owbVttUL80B3FD9zWwPF2z0XTaZbzmFpkVzub/+o=;
	h=To:Subject:From:Message-Id:Date; b=gvEU8oWjnr/LJfbE3T0qkbw+SXHIEu2LW+OiH8cfZuW3XEAPsNEa1EJjNuvwejvU5TSRXuuL4qHr6yCoYmLwi2Gunamku4VVGrd1Q5gBAklsBeNQuFNLDw12LF+FloaBf3iT/3lXL940FFfL7gY/nOKtcIRkhADXqeHK8BOdguI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwBMiYOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwBMiYOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4A6C116D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766580833;
	bh=SE6owbVttUL80B3FD9zWwPF2z0XTaZbzmFpkVzub/+o=;
	h=To:Subject:From:Date:From;
	b=lwBMiYOVh+2yIPNGqgbN+BsE9sXjghz2ViAxSuKPzZ4bH4lRAZn82xjWv4LCoP2tn
	 DVVojbNJRpJsNeQe8mYi5mdivmzrJLd43sFXNi1Wd2N0vTuLdx1pac0Nmy2Oh0vzrr
	 WGVYq0xd3KuXN9L1tWdbyQ+42lyqGUeX4Yf0t+9QR2rRlZtuzhn46pxZ9lqLEKoBW9
	 Dn3d46c1eIgGChswecLrv/1hTDFoBtGL0smM9uu2gDzsLViAjPOjIF0OWwY+AN6Ocl
	 8j8M2Wo/5x/IRV9fw4iyxL5KUl59xjQC493DZAdBd6Mflb0hyFmH3G8SeLaQgdKrly
	 Oki1S3jVbhLqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC40E75453
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176658083358.11115.14163561248499437420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c492c390a0f31243352f4ff4abedb8b04cd8896791a0f5a91bd066b27780cfee
Date: Wed, 24 Dec 2025 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766580833
