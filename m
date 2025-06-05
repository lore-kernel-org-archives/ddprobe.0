Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB4E1A5B8A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749155394; cv=none; b=CQ07m0nqbEerz/qQCN1aaDnqYeGRj75aV/mngcsltMp5XeYcjdSqG+eXAt41jzw/VBCZcbF+kgB9cUQ/smaO5ogE4wMjUbFLOWoY6+mehFDwqC7KKs7oh7jw2OGUGaLWeyzhuM9rF45Lc61wXik7dAf7sVCks1c5G7Kbb24LFmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749155394; c=relaxed/simple;
	bh=3rQ+LrIK4yS8DtwdT9gHgAZXv4dolgNUBAbbIPgdBqU=;
	h=To:Subject:From:Message-Id:Date; b=Mg+UV1Ib/1/mi/rHt43BmGe5em1Onh/wguba3uuokewmnEBAldDFqjFaGWPr+A0ZO0ANXcfrWGcKmHrsp1k7r+Git1CqiIBLGQWzXafVAdbM+FOsA5uMGBr4fqs4eIUItCXQDg1/3ULgU/xHVDOyqA5se9Q/v0AcI0jAD4YPuPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWOvBJBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWOvBJBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5D8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749155393;
	bh=3rQ+LrIK4yS8DtwdT9gHgAZXv4dolgNUBAbbIPgdBqU=;
	h=To:Subject:From:Date:From;
	b=LWOvBJBv6CqT2oq4i27NbzOSDiRrLVa6LL1m1P0HV1uPC3akoJF7133aRx8pTkMRi
	 EwACzjuWRFFMinomVClFUoCrTP0NnSfrmpNR58E/EIZMXIPs/V30upoh3UvgIUmfOQ
	 ZwQguK4W54XbRGsB6duQeQzVdGIpyFANQQk2MhbF/wgD3YTvCbgApcehdXkkwMzteK
	 aqhQF+/i83a0Y2gHbRi6zzWozmc+EcpcO14lUZFo2TiA0EbO1/77llan+jNXMRW16L
	 LCdO7mtQx0kR8IG6/wcyko0tsd4IOwXTyQGSz1iKu2kXPHihORiMlVULUVxbxDfU+F
	 oDLVWOgbOsQeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D47C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174915539359.2577.12737639416798325063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4875fbfe267b23bb75a3b25af5608821661071fe35b30a023c566b5ba47460
Date: Thu, 05 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749155393
