Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6880BD51A
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715639543; cv=none; b=cLGQARJws8VDb6gloZ2/w8csbVRgX8YI+veleL4SARBWYlHV+2m63QHuiDilFYCTU5Wcs6Uk9HMFPGR7kONyr08BYUOotClyQc9Hmy6LhxUVO5/4E964xaB01s1iYZcWoqF6JE6VJFAj3hFrQkBmopNkSmgFHjELQ/qpYoV2+MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715639543; c=relaxed/simple;
	bh=075UxBzrLWBfIHWqeHPqfx/PSFmxbEvcVPKBAWNE6uc=;
	h=To:Subject:From:Message-Id:Date; b=dT3AAM+XD+UcaBRsUEhdeb0fwrt8Xj8NMC2vuCzkufqw3HTQDLaq2KweGTJMH1XAWIdlUwPrj9R3tqkNYdwgIsqBqvLLFhIKs6d7wEoYMxl8D3JmlE7hqyCv5bhd/FhBG6tGJmxAy5MdB/JkclgdT1mc7vQazE9oz10XZMnsJBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmPQZG47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmPQZG47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC88C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715639542;
	bh=075UxBzrLWBfIHWqeHPqfx/PSFmxbEvcVPKBAWNE6uc=;
	h=To:Subject:From:Date:From;
	b=GmPQZG47SfRCz8vc3qgeNwbKgFJKeWrZzvu2OpesTOj8Vlb+tr9Gb/7hqVgoI+Bw0
	 8HqyKghlFyFVSP8kkZDHLYAz2IVOQ8FpDuLIsgS/W3HpKauycF7273ltDGVPwZuaOu
	 45U7xwY6IiVI4gO5Pjh81iR3bFh3pTTjmDU/UmKaEfAdGBR2kOA7h+QsFegq0c1J8A
	 qKZp4LR0nsWksdDUPFOuYkQC8/r36Px0LR04rBYdi9AOFZYeoMGyQQtF8pHB3Jjwon
	 y2/aOQLrc03UWs0px3uV66czV9tuo6jNWyULLCt5TgUnRJDd5FEZAhl7FlvOMuq4vb
	 iwAMmS0u+Jn+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B66C25B78
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171563954279.17062.12380623609122843389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e568914e572544295f36796878365807c58a59edbadccd84a83f237e0bfcef
Date: Mon, 13 May 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715639542
