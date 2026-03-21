Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA752D662F
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774128894; cv=none; b=c0i3wCCvy9VrGIw1YqhN5BXtAHp0ShPTTpoZgmhpf5Y8+dsNChfV2q/LQtwNjWcMd+HCMG2wPhSTZLBdocg5znsWeOw43upqWR76L0ApLi/NZ4r3Ys2s3XLoa1rOYPQSS+FR6EdvhGeOGaP6t8iLgnOwudsqRdEjvqhTqPrkoBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774128894; c=relaxed/simple;
	bh=oPJ/CkGgtPfVpwRx+VTSGMQoGkGy+lPOuk/0zqw5EAY=;
	h=To:Subject:From:Message-Id:Date; b=I7QSJj8TQEp0eHdfLLZ2BVWPcR88yJV/sdHRL9H8V0lRb6vRrZucYukSy0wGqFm6bQrQF2IuUt5hnG+VB7W0wFiatkBPg5ugvFAZcANy3WKLFt/CLZZH+Bo6YNOqkoRYl1zCFFuOGvVNtR3sEGVSigGGcdovsn1VbktgaJe6l2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgYnszoO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgYnszoO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A04C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774128893;
	bh=oPJ/CkGgtPfVpwRx+VTSGMQoGkGy+lPOuk/0zqw5EAY=;
	h=To:Subject:From:Date:From;
	b=EgYnszoOCPMK7Q3zTAMKIorZ1kyP292w1vuyJjVrZHzERKSUANGQ7+NbeqjhboBYa
	 4wWlCD7ONe+vk8UGmZY3NZ7e7AneHxhLUg/QhF5AgzYTVdsi8LOcECqNerS7eyLIme
	 EsuUOprBS0/JMrGtHVJyWttA8YF/B4qdaXGkt1d75HVfQOyNDX9pvAHFGbYtK+kQ65
	 uPgPbZkHN98i2VPXEbfftWiSGFHSrL+TSFlB6PE3YthIGKacoxQUNAjD8x/MWw65+v
	 wZxMeThxbDXbTPkNRgpw9Duq/dr3QohCXWUpnWeyKsiBQ/XClunokkFGchcq6FKK9D
	 HlVixhlvGU/5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4C1109449C
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177412889357.18339.1328902550207216169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b40e0ce0a89503b12ad7939c528c770a3c8718f2780e5a2a3fce15425cbcd8
Date: Sat, 21 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774128893
