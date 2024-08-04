Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAE9DDBB
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722752754; cv=none; b=Vvu14bcJWCH6i++FJo+QX6oYDPnFMpQfGoPYfucTcFyTEhOzeBp1Vs40KAE2NAias2YvVABTw7vwAaDGsrPUEorqWuE0XDd+jdABZiKw+Z0X1rZiBZtVo5wUuUoRzNhjraIb6KK8QUtjZyWZFu44L5KhWIWIouMkbqE/KN/bW1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722752754; c=relaxed/simple;
	bh=uV8Xf7TpbjTnB+fZLVwgResNVgq/OlEs6wLR5ESVpyM=;
	h=To:Subject:From:Message-Id:Date; b=bjjTIl4VwVK5VuCpRLxUBItRh7lftoRh3ZPWW2mU0BxiGKNB1v9iY890/wJew/BNuJ0Rddhw+HJq1EgBPy0YuDU6wjhlv+DbdEZx2pixh7f+tw0KdvD7BAQ9mhHZJeRWizf3gLkHeOcRuVVj9vQORLQWag0vrdvsRTRoxLpyYJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhYQAVLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhYQAVLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1EAEC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722752753;
	bh=uV8Xf7TpbjTnB+fZLVwgResNVgq/OlEs6wLR5ESVpyM=;
	h=To:Subject:From:Date:From;
	b=jhYQAVLke9oSHXe08EUsI+AfnBI47QsoiSDkhSq3RElQHngHD7yyLVcU9e4F3wyWx
	 6Nv0QhslP3+Z8y6RmDG+sU4bqSiUaNjGBLNgAP1ewi792wUhbP4BvJv7jqNgzAH82d
	 HYHb5lsXgJF2PZWCGf69d9R+/TRG/rAFuXtVgJPi3b0OR5QmOVnnfHHas3+YE8moAK
	 KxcmUhFwo6s9gTO5SVs1z8WvSpFJvPfBOk2XIjweKuIAo6Wxf1r7bX5bDxIRl/8kYo
	 zV9BEztPrLwa7R/YY5lE5nZ4D22pHufUnbMUNODTJDtOCEGsb6fes5kkzl6zBttrgT
	 vAoUP5OzaruLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F89C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172275275366.3527.14480315682902829009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c100c2aff8c124f81161f2377fd061c30e4fb7965522f68655061f64947b739b
Date: Sun, 04 Aug 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722752753
