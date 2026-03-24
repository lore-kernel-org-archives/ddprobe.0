Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0812A3081D6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774380894; cv=none; b=BE/hDYCD95D0uenRsnueQPsWkll/WoQ9wzRAKuyNlSqmFIt6j+oKAtqLTzUXCIvS71dTIbQ4LGNkeV+9vlOR1TbhacvNNVIf1W0O6FicxHejF1yqXZ6x4UFLaYcr4ONIsQWRaekbYKQo2oDnwyKtk+RNZz2F55/hXyTqK1yWOoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774380894; c=relaxed/simple;
	bh=lk7DKBNpwULS6tXhFtCVWWBYYwposEsW5unPoGLZaM4=;
	h=To:Subject:From:Message-Id:Date; b=SUtAhyx7KxcQLmLrgQLBWV6lmEVpSp32UE1ANAwRfGCwSYerS2+Jk01eIq//59U/QxsFR65qXv+d0gc2DWmB8YdGBm3ktiupgRVj9+sbVmbV3SMiPgmJQJJ1OzSOuhJI83BfwxGgaW8dQLEryWg1hnj9wbOdjeDVsse3Mg9aGm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwYwYn8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwYwYn8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64A6C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774380893;
	bh=lk7DKBNpwULS6tXhFtCVWWBYYwposEsW5unPoGLZaM4=;
	h=To:Subject:From:Date:From;
	b=UwYwYn8caGBAmqRVLL/SIm/VxrRkNG0bvaaW5yM1B9nYXqjK+JTYP8VgCX5YLTL89
	 9foM6joQiR2dImCf17QsIh2g3/fDtihdZArt2aZJ/wPKayUCvZTSQfb9K8Dm6OZ59P
	 Q+/hcl7OOkJupbgR9HwmRnk/SuUQDtfUmrHXW9Lgln2rq+EUFqsXB0nXzo6WAc1S/6
	 i84CsXQVdJ8GaIHJ58dFUrRf9ikI1NV7lS/Hgfk8LjaFGFpPTBP+i7IaE2paDlGw8W
	 j8KyiFm0Us3daefWCDetv8IzVpjL7KmWkmBSeESdMiBisingLm3s58Ot3/mwdjuAS6
	 3kLq8Mitd9jxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9642FFEC0FD
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177438089360.13146.16189305836868279758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afbd86e21538fbf33fd2895f80b4be871903ea720ea2bc14ad7bc4447a3ce78c
Date: Tue, 24 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774380893
