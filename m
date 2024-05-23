Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6364520DC8
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 21:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716498803; cv=none; b=fWoKm48LUQ8hxF9I+I6MKjFXM/aA8ezDZrDwAChe2QeUssFU9m+xk7bshyAbrO/A4IHf13D1MX8lbEEk8VLmgf/DpA9SdiPNTcpm2ISt0RCsEIyP1Cf2Sl8OJwticiea4ZNpgwa/l3PFpuKPvFxzXwLDZ5si9PUc6NGccmXBXFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716498803; c=relaxed/simple;
	bh=Y2BqEq7oiKrp19wyZ8Sk/5wF9+1+ha0rYUB5WCJSaAk=;
	h=To:Subject:From:Message-Id:Date; b=tnJ+FonJ2B2FZh0xDL9Wn0E8jvsMRgAl65oroC+blh4Oy6GGGI1ILXiKu4T2dORm6WADlBb82kEDPQM6gsBHH6IhZIweYPskcLlO/41gtVAd63gIKR+48pymvm3NtjUEVsDA3XkmburFGv9OeQjlO3Xo/swk7fwsPR4RnDJ6VMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGKU3wXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGKU3wXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDAB9C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 21:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716498803;
	bh=Y2BqEq7oiKrp19wyZ8Sk/5wF9+1+ha0rYUB5WCJSaAk=;
	h=To:Subject:From:Date:From;
	b=JGKU3wXgmuo2gWAcDFLEX8vOzhxyCGYdLd9mmNrabP8lN3Na3jxGWf9qbjA6rd5Ng
	 u/JA6nPkZqGiFENi7Jg2lS2JoUJ1iaF4f7ZfmaexXW/6CHgDDCwQZ0z/r7qb9h0Mky
	 S9nQC8t4ENGujAPGn9dD7d9/DZSH7t60J9RGh5zzRhwoRzFvLj701cv260yZe0Y2SH
	 c1KfH6FLSBEQhq8yYnhfg3W1HXGLZz7qW7MEJr7N8dzw2847ClKnvqfKe7Fgx4Ftcp
	 3IVT7Y3a3UnINq25J7Uy0A1rPkuQnpiWedTAE1POt65Ozua9qYJ+iTkPuT1jcy61nQ
	 Ofs9VhBRHF5PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D84FBC25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 21:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171649880285.9653.10445510977394172662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb170a74a6a1fb0de2e9fe455db89fd11c7cdf21e2e028394156ff368bf56fa0
Date: Thu, 23 May 2024 21:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716498802
