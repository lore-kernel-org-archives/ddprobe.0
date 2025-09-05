Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8741C27
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757043594; cv=none; b=F/BwsDKxkhE9n9qVU0m7kQ340ySB6Ywq/0ZgYvoj3alueVhRmZV5gQdkcgyMSX4I1wTzLMCxWeJpHj17zJegWRzR7Lz2ZGRHA/5YhXhVE7lLOZnGNitZHmt7RSci2PH1LJC9bSEx1ssI2pFJmJOZ4wmbZoEG7wHVz8sP6aWXvmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757043594; c=relaxed/simple;
	bh=qzgfp0AKSjmHF+N2u9luJ3BAt5Jxhyj/DB/S9iK1mKI=;
	h=To:Subject:From:Message-Id:Date; b=CVX8sQSJ89m2NEztc2wFPrfBvIREwHqoGo2UkxvnjDQPOKsWIRJ7kxjfietgMTNGgwAvkAPgZ5kvnNJHQXxhLmK86/AbZr/3DEVU+KqlrmQmu9ba+bP1v3R7Le/VwpraiTE3EUnSbzAO6pL4aEcdgMXCjE6tgWhaAvzo8dhqmdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXBftVto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXBftVto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3128C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757043593;
	bh=qzgfp0AKSjmHF+N2u9luJ3BAt5Jxhyj/DB/S9iK1mKI=;
	h=To:Subject:From:Date:From;
	b=uXBftVtojHEDHhIKrg7HW72cYLtG/UEjxvOUDp8d3C8GIvnBD0f4qxhe6Y/rDj4hO
	 Mk8k4obgFFns/oCXnv5u5PFBBC0ymPQQCewkA2eJxSvUZVXAO9FJHcvOVvHhJ4cWLu
	 qu4MfuhnqXuH1LSgRWhh9XmBCCIJcO04I9ASRtJya1Bc1bpxQnj00NaEueCyKpPsSL
	 P9tVhjqODaSsJ3B+vqzdGPys03hwn1QGmtXxVOr5kXvkzOmjHzNdG3xobkr/CLbKsB
	 QXU8BUP9zsRgBZbgPrenDN5UZaXM+omtlRuygqPylUPix3N0ZWME1IgszRoV+1dcG9
	 2LKR9fnavog+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA66CA1002
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175704359357.9269.16584263014240731278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ac3401842335f116caae9f6953c07f51e1894cf466868adcc0424f839171fd
Date: Fri, 05 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757043593
