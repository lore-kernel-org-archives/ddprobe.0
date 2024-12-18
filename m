Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B420159596
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734513354; cv=none; b=lTQ9HP4PVK+ZQcA9ePyza7M81rpYFrsiIBJUHWxZhR7xYPLsOforJBiFL5BUg5RtIarHPRoQdCd9T3adlGr1hIp9zSw5+KNyMWF+FaQtFaDElvS1i46AhZ90DIE/G7dUuteGtDS1ZRQFlUBi6B84pXiEz6a/mhFAmf4h92pnuiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734513354; c=relaxed/simple;
	bh=UhD9cw+zqKPmOSzDZDIel4kN591KFAr0NxQMny8pnWg=;
	h=To:Subject:From:Message-Id:Date; b=PWTnWTYL3NGbaT52PxqQEd+e2wlTPLmEWKNAWGbDRQJZATK37lAKjc7VOHXRtB8QPiqYJH4x3JqltlQc4imdpd4pZ6UWQSI4dhM7fXY0TFKKcPP18kPmWNQIDeaAHWKKFBcftoMzJY1ehWb+HkY4vbi72CUurZmQxxLBMaUfLnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGa5rKsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGa5rKsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9265C4CED0
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734513353;
	bh=UhD9cw+zqKPmOSzDZDIel4kN591KFAr0NxQMny8pnWg=;
	h=To:Subject:From:Date:From;
	b=kGa5rKswsdBSIn1VOVYt7/Y2ApDt4NcjonL/BMLoeR01JZuRfeRu5TjwJ/N47u7ED
	 1wik1ZXFGuE7/H5mZfDvPl/6gCaQKBbAhGjPQfgkfK38ewUGpjoehYWl0Ch+GdMmQw
	 FoM9NU3+HdsBM1Bn9bjH6gzAlkJuKkhsrgvXRalVOFRJ1Fnixrxqz5K6Nou8gg1f4s
	 tar7X/FJ4mJrxTiW1hQEeD2St/rh/16VFxE4QiLtkQgiaDHUvF8BS3BygSG/nKc0V9
	 snH8Z5HXB6+sUNjnMP3obwV1U91YFlGy/H9A6q5f1q3xSaEm4QaEH3HuS+c/0bYdVc
	 WJTMnZZZxL6+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96836E77188
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173451335360.23181.1393136710461168885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd71457619bb6ae893a0ff615557eb0cbc193efb33648dee21b81c42ae08404a
Date: Wed, 18 Dec 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734513353
