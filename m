Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6034218028
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721922354; cv=none; b=fSh16DTgQ7LqNSjRveR/i1sI9VgO08wVDJcAnWTKa9czMvSfvx97cNU4Kt8ASUjTO8kYsofe76snmyzABsOou0yQJUHC0VdDU8f1hCMH2bYZAEdxE5rAEArYRmV+D8uGx+Ojmdh6X4vss5uJAwMk4LntAf2JNAERTTgIJYxRXWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721922354; c=relaxed/simple;
	bh=QFU1vhQQdRXlnsbhMvXQf0jBNHc78C/pLGz2DmkwNes=;
	h=To:Subject:From:Message-Id:Date; b=A/MGTChvJY8OeEE0ub5s2iaG5pbKV45gTXJvlVsIrDMf8WshuP0jRDPeB5IBMPCxBgLvbyq+1xWgTEgeWQY7M5+TnMfIMljPkfql0SYu9IHlj6Gy2TPitkAQo1fv+lKnDr8b0OUnVyeM4CFOSmGb1mGbNQvmYxG7/AGDRBeOGow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLZ2x1ei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLZ2x1ei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7564C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721922353;
	bh=QFU1vhQQdRXlnsbhMvXQf0jBNHc78C/pLGz2DmkwNes=;
	h=To:Subject:From:Date:From;
	b=SLZ2x1eixXBth9ST1HXEmFKsw5YBqoGYRiCEIM7Ym5fidUVPD45Alr2gvUOCkNP3A
	 HJewER9HtCLpGUnzh+SIlK8ZXfxjdsKNqwi4bIiNzr0bCq0cBp+RLpJN9eCw8Qu+dS
	 qXg2iaRhnXJU/PQ+QyCnrZsgIJ6kig8odFHKsacMm7IkI8CVJzhLl8wzkUDwpa33ow
	 Y21t9tI4MleInfVhXh52ydg/tm1NWddwQc7cVDMm+gtE1SkWkzuf/XF8VzVVLfFiTN
	 VbXy14c1GGzGMl+ol3M8F/AluGLs3h/boWwiiaCYP5r8/UO7brz2JE1E9x2lIGUwXS
	 z1TC+ydfsGOkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCB0C3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172192235362.24330.11978212033987215580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af0fb5853534f6ec06224cd5245b1e26bc276415c450896255453f8922bce7e
Date: Thu, 25 Jul 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721922353
