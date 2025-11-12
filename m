Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDC927FB37
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762981794; cv=none; b=jFJwkAUk2unAIqC5pDUUGcklMLMSjMPn+KtT/yH3ROI3SUAyQien6nLyhFmDOTjX/maaOJUGs+Owr2hij4fSNB6+Ynu1Xih3Z9I4RtMjKu0yI5GMc1jF3DfEOITAEaxiLBMefAesKdERRKqYyPouJ0GnllXtqq6FjAAgDUIAx8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762981794; c=relaxed/simple;
	bh=uoksfs6A+5Ia7polzhAX1mgbMklvxGsLvROGIDgW8qE=;
	h=To:Subject:From:Message-Id:Date; b=fwXlCttSp8BjpO8vED/h1wUqXJ0KTLNRKGp9wW6lr7IQWLUbbSyJQs30xIzHhboIJIm7ShXAIJu4Hk5HMd4KMzUg2bsk+Hm6qGUSBHWlZ+7rTSV3maHnb7l9gy/wegGYkgRbMh9KPOYO6MNeTAkS9i8d11MkhSZXo4tnCeWNnvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLAityU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLAityU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D30C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762981793;
	bh=uoksfs6A+5Ia7polzhAX1mgbMklvxGsLvROGIDgW8qE=;
	h=To:Subject:From:Date:From;
	b=fLAityU93m6B0SJHXySZWa9lTInnNeG74pQdBpFrxu0nwieY5elUFAeo7rjhfWNn2
	 iMDWjSeRkImw4nRGGLJcIJtyXc2mI+il8bETc/vG2DpGTa/6TQoN4A7FrvnF2EKoLR
	 BM37HInwP/smu8HDZnCVwWOsS3K1iGOWGGhFKgXlbzxWmx3IjP6tHRx6QYOiSHJOSm
	 sBuVmtBdmQ0ey3/A5iykssDWybiuaGBZvp7mGt8MiX7gkior9xtfEacv4wfZ6aTS/0
	 iaqpZkF8d7wrF1QWNvUEgx3u8jGxPDSb0LmkWeID4RGgi+m4a4YMFZUyLD3Fo3OiCH
	 4oOLo63ZRSRaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30A7CD4849
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176298179360.13543.13760842132608644540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a2daef292cc989f0caaab6d828593e643d6efa48541731d35560acd53b8169
Date: Wed, 12 Nov 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762981793
