Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323044C80
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 00:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728692755; cv=none; b=IIwAMwATjhQuBaTN+QO+AB1+RexfbIIRGI/clCLojkM+EqA8WU6UD/6EkKHiYaAcgSpkMdi8X3fJMvH31VET9lKV7uzO56vbtCo1k0JJoCe5uUNI5p0mGAQCE42exwuRUrZuuE92eJeIUYiM45wgFZzGv9Q9elnoxs9lRXaKtoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728692755; c=relaxed/simple;
	bh=e82uiRAbOwek2h8jmnPwoPHPlQO1Ryx7hQZWkDeS1pY=;
	h=To:Subject:From:Message-Id:Date; b=ZPM3djUSGAJs0bFu8Xib2/wxVZ4mUrW2SzI3uFhmeIzIf5yTfOWAPywaK4s88LEnjnYrtaKLQ/GrRESDnObC+Abl7Emq/lWCav25HyTNb1rkqIK93vet908Xhe0IEuwdn4ddh9K4bpk5P6d/69sK2FZVW7pmE2YmEyRi4J187J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWH7WkBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWH7WkBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3798C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728692754;
	bh=e82uiRAbOwek2h8jmnPwoPHPlQO1Ryx7hQZWkDeS1pY=;
	h=To:Subject:From:Date:From;
	b=KWH7WkBxeMWk6l+thsN9SOpOZcZXisQkoVU0p6zZX3ZVNyh093zo+v4W1+t9e5UBi
	 CwobeipJ5yCRsRnoZbRs0fMxGOCEq13VfljP9PBhIrCxehvXLosUM5JWDPUY3L0C+5
	 RNd5tBW0U6N1jemJGm1zz6+3+lzUpS2B06KUN0AoX1UkScy/i6Z6WsCuZLuITexJdG
	 OsMPT0+HahIVwFib/SXeHhIUZZxwKINXXslS+3pQxBt1hvgY/Qeh/VVlRO3J7pIjeE
	 CaBHO0Xhmf7lhvZYlIaM0fnZg0xXaJ3kMr4tCbDVkfJFRQTCkBEAoy7JKfXXnbqbCI
	 DmxQSuO9ffXVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1ADCFD347
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172869275363.3583.15497862130356462980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5faa7e0d7bd7ac675622f1bc031a6e23d5004f43a11122cadaf6d00f90000d4
Date: Sat, 12 Oct 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728692753
