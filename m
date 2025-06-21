Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E6314A62B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750541994; cv=none; b=IniAPB68frdgXoHVPI/ycCahXM9VJAr9cbTqI5iw5U3G+P5EVNrl4goL9piQoz3bp9zsbYRmJ5VWBY0ipwiJk9ZbYXX0pG8EZV5fLQognzg/INpOLYPzNe0E+1gbjtvKhQDQlX8Bjeo8YI+J7jb4d8nN3P8AZarmk0hFCvFqRfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750541994; c=relaxed/simple;
	bh=pml+AAVC4FJwc8lh0+LArng9mQncyqJuX+1s8kDnarI=;
	h=To:Subject:From:Message-Id:Date; b=Z+nIcLbidpCmTyUOmPF8Dil+uqyoozSppnnvj09MlpdzGrqJPRJvGO9SzL6LWjG9MXTbMZqnNpAFfR5daAJ3m1CijQgq+w1ugqnqj8A91wyhLFgEE80GHaYDFfUPuRROYsmF1Ggs3vte8K2GYaC1qIiwDrNoTVmxvRnBLO6slOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9WA3yKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9WA3yKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB201C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750541993;
	bh=pml+AAVC4FJwc8lh0+LArng9mQncyqJuX+1s8kDnarI=;
	h=To:Subject:From:Date:From;
	b=F9WA3yKoXaQXejO5xIBsRJxZZdzltD5JHqiyh/udS0NN5nWvpJ5y9WHh3uCsTcsjy
	 7fgeezF9Ul4vIWsk7lVYuRQ7KRazl1F+QW8ZhkdlkOFhgdB6WoSYFaodPHaKUGDUVZ
	 ylLpcgAXur1q/0kTpOxUwye6fyBKjIjPqVmGsIX7S/O5gRaoIUHAaE2jrMbudpbmag
	 +rFnfAhKjUKv/HnQlJ2fUlGCMSzdiW2Tpaxubuou36aCD4VB6OdMwHHOzlVmikcdHX
	 LmIzcYHn7c/AsyPnmtiZ06TXI+sAFCSh8JzRRXql0EeDEDha6MUFIkSJGvICQhZwdZ
	 iI7yQxkz60ToA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A387C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175054199357.6993.10023507670295734015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd89531231dcd0601e854518049e4fffe37f146b11658ca40264be89bf9b3dd
Date: Sat, 21 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750541993
