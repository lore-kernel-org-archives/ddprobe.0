Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B086288DA
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747374594; cv=none; b=jhE98hscTx1S+S3EzLnQfc6xR+7LI/KY72dMKsuFFhKgpTA89npEi17nNLFq1lO54FtoqIPDh311VQtue8zfHsZ1OvcsRvzQCZyGa4K4YPJ7vIZrdPCefTgR4Vmnpmc0Oj2TJHqtwSeYjiBtRSguIk6ReXrUYxhuqAcuUF6CXHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747374594; c=relaxed/simple;
	bh=/o819xQWFZH+MJXWUMpiHexyH0DbguyGDHJE9xF0Gac=;
	h=To:Subject:From:Message-Id:Date; b=Rz0O7vT6rxbeNyvEL5LGLiZMWpfQ/XdXcVCKOsc9GSb9r5cdtC0xZSc0svq8/D9XCYJEi/Xb5qg8JkH6lTzasHKqSlI8CzOiA86wc59GHztxQ/lBWxW1tOLEMCbS61zTMQIsGcMUDmb0krN9IdxNwH7aUGLW8tRygSq31rEvFAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWz4T1mo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWz4T1mo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AC5C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747374593;
	bh=/o819xQWFZH+MJXWUMpiHexyH0DbguyGDHJE9xF0Gac=;
	h=To:Subject:From:Date:From;
	b=LWz4T1moMPGaE3c5dBUricvo4XTGVd6D/Icb2J76USYx7IQcAHCgNqEavwErhTDcU
	 9co2W4hNqfeCX/AGta0n6Ecd2Lf7d+AdzU9gMohKJBFGHlITXSA1zO4MtldwUKnRp/
	 aq2OIRE5sQZaoQfi4a5tcZBws3jHidDDkxz9OAdSB1CiWfLB6KkVd2ObzK7MYpeE1+
	 7TIaD9iIvhZZAQ/4l75tF6SzlVHur/IELKhMxznGsikm7T0lMaMomI6ZoJXbz6cvHn
	 hsellr0729wj9x3TJggcqT82U4Is1kJ7sjdUQfHIJr/WSaLenZprxaWtfgxxUcO4bg
	 yQhr4Je//lqYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94709C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174737459357.24747.16913508460747896215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f80417eb42b27ce16d1110c3b2ab657a0aed54f8254e3459b7af3a52afb314
Date: Fri, 16 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747374593
