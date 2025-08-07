Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F481FBCAF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754593194; cv=none; b=J7riEny+KI7Sn73IlE1MePkJFXNRm2BzGha9aG9Ulv+aieSzcWDw6eq1QxecVqlK8/qbMnvS13ee1QLbK9DcqQ/oj8JN0d9uM0YuIde1/811DAgQo3arn7EwR5iFnuZ1YzSa5/VePJ5vwTRtBMKLH78Iz7vNut0kECUom/JGZ8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754593194; c=relaxed/simple;
	bh=JGlTEbVePgk2/HUIYk+I+o2bbb/bXco+SzNgiosMRxI=;
	h=To:Subject:From:Message-Id:Date; b=iiulfnMSHeeYY0ShMY3WndV5srr5cuYE5Bik4A4IU7PiU1AhfuZ/gUDixUwRZ0hzJDXkpiMKdJqsE1PXz6qxfxLHJpWXbuKXoqEIhSISEDOv2Ggds0D9vIKNWBPwJiUtT57U2LelJynaL5tLJkN54EoFmCsQAUvLCPCp+aIYBHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5PEuHSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5PEuHSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F110C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754593193;
	bh=JGlTEbVePgk2/HUIYk+I+o2bbb/bXco+SzNgiosMRxI=;
	h=To:Subject:From:Date:From;
	b=p5PEuHSGOdwFkQQozWd4wzZhts6i4qLkL1mttoOtmO4yI6ZYkbWIEjy6FDKH6+i7L
	 t4NxHyBmiP4uWXVQftOPD6FIu1h5iEMRGSISzAiZLfwwBr4T3vlGnYObQr+BiDK8xi
	 n7E3ytFO96PUGUVA8ZEpnPuUEI5Ht7Bd1Adtwnvgkltf2FOz3uJIFfmRJj3lUVPaum
	 qI2y6GLb4tu/hHGFoRANKnsci6T9otgyAsZXrY5RMmx8dIK4lgBwcQgtUi/iUgUlMY
	 bJ2Z0eVpHF0iOcu49yiNLciHDW8g/7JHiFwur2a6oDqj0FlVPwFvdZ4yLLXJp/XBIV
	 J2cgq6VM4QZ0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F239C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175459319357.26263.13520532201798807472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6637f8d798d94fea7330cc3ab20119f085fe2713651ee95aaf4d5256acbaef9
Date: Thu, 07 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754593193
