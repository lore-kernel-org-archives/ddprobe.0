Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5313279EF
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720142723; cv=none; b=a/EpemBJ9XqTqO6yPnisNvtLbIMURgh4Jfj3kYTOtry9lsXwew2he0ZM2f5GDEr8yMX7fAgm1hkndBij7yuXho5K2AnykFxWIqW4NN7GhY25lf1clBJn/sxGmf4HwfcKaC7IH7bK+oiW7skCTdEGEkI+5mIn1YLYpRbQNF1VyuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720142723; c=relaxed/simple;
	bh=GiteRMZg8IjFLLPxacG0OiwK7gwLVnHP0SvL7kuDaS4=;
	h=To:Subject:From:Message-Id:Date; b=E0HtrHAcvhGghT+MKt52D9OHxLz2rVXRnl9t0FEikn/uzwmJgRBNiMu/F45Oko0/htfOBeXc0kWjt8Ii6AEhNFWC3/fdBhtUXoGuh4ek6B6wyFs3OOR8gPnPyKjWl9QCXZ1Vx0qtu7YoixDxS0vQMs3j5EkrCBfDutoN2uUrKgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6hw2kf4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6hw2kf4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DEDC3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720142722;
	bh=GiteRMZg8IjFLLPxacG0OiwK7gwLVnHP0SvL7kuDaS4=;
	h=To:Subject:From:Date:From;
	b=i6hw2kf4m0WS+sEouho4HGYnYlf45IRqKwV9Uih83al83k20YbkpWSRG3ElsLz3s1
	 QJyUxV/QqOaHzS2WIzMcfGWNxlWNav4reV3c8rJnk0v8DC7bod8YXFrZHydgb2boxr
	 4FmuqiL58OU76O1vj8Knlq+S+51kiH8CFGem9vbUJeA97eCmTFvi9Wou8YvkTfSt5Y
	 ikQ/7LfgrF1qxAs1hYiCrO1FV4G9+egkqY8jii724Rw7avGQ9rnA3qzCK2gCZ2j21O
	 L6I7riTljXXQ9FGJdMtS6Mak9SHD8MiF5KG7Anko95Y8ODptPrsrSy624wK9Ubz5lT
	 3MgOFzy1YXeJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C74C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172014272276.21009.10435253793466285198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad075865a4df3eba2f7f4e1bbbd4776b8945b8814a24eb701495fe6c28051a3
Date: Fri, 05 Jul 2024 01:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720142722
