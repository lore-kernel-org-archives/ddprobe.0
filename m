Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E77722256E
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742556594; cv=none; b=C1cK6luVyiwR/+HtvPgNRchYYzvo0OuOJSmWpPJo3YGypW/5NmVnCMw8VuwanXsTkRxSEy5EDpdfWqcrD2oFH1SWYo5MdVR3Uc1mfm2riDHz2u1A8M01pRoaMIj3Pk2OCnr6AEAx4KaXIZ27GUpZSdN3S7FAphpLbl/Agx6OZ6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742556594; c=relaxed/simple;
	bh=az+3sl2f0OziMjAteJZXFmuhhaTJbBeBCRM4Q6/EeR4=;
	h=To:Subject:From:Message-Id:Date; b=lM9xyUq0glN3sGA3ArFFL+g1EbRPoxv3XWsQlOsVkSAYTiJc8LHhrFjF3azVMBb2ZSAhIe1cDS7sGn0bWPbsk5dkVf8ccBQh/ph1Wn2W1VEkv1SiOoU2RPNIwGzQXFo2tByPNu6zT0fDyp/xakdKuGcS1+YHtVwPnx67Tyb1u8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TanRFcvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TanRFcvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC5FC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742556593;
	bh=az+3sl2f0OziMjAteJZXFmuhhaTJbBeBCRM4Q6/EeR4=;
	h=To:Subject:From:Date:From;
	b=TanRFcvwKGoZeBOvsLqibUbFJp5zS/auglzYbaXo1LOX6m0wGEUgDBxZUokMHchUf
	 D91Z4Z5L6BKa6R/IwDe6NdJYXgAGq5bLvhjIGjMS5sD4FXnmuoglwJd6wj6oWJzORg
	 sqwfWTHOZuMSqBz4V2CVOGYasS3ZQMShjXV41A5i8Hf/tx3mQt1dDCASg9/0+hCuwH
	 HRnqVFmWXKRvIJ/vBDLv1iGyMX5p3xMeftmphIA5NaATYU3jQzHjVTJEW6GKUWe31R
	 Kt2+XzyHu2LcGJhddmE2sYRu+1e6Xvb8h2pwjWnKyvWELQIt8WPk8jAlRzaP8R8E4j
	 CP8b1UQNpNuMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB03C35FFF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174255659364.15321.8416769881402619760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a3514ecff819963b4b54993d8c40a0850dcb1a65168571032e072921caf845
Date: Fri, 21 Mar 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742556593
