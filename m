Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635202F5E
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738387554; cv=none; b=g9P7ip7gq/PERkGo6fPb2wfWXtk+5aDHAb03FoAk0q7+W72pC+EF7LyOwAzM2+2wibpP4XMWF60NuWex3ku2trV5ypOaBqfTNIf9GkWAR3EGiFnp/De12CmJLsww1G2d+W0yC+lPEF1ffwh1CZm2MYPknusMgLSB5+Xx2eSshZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738387554; c=relaxed/simple;
	bh=U+w+Ol4CeZk5eoGerMeMQhDe7Hw42haSqGI5cx2+6qU=;
	h=To:Subject:From:Message-Id:Date; b=tYzWcZp17xdgRF92hN1G/LTWKUGSdOFJ5HjdBMtKCKx/eFa7ZenUwXTebLka2p5BkLjwVfsruUG6ynhhRwaBak2J9sagOr7b/z+oSzFRYnFpBoeRzGmkznZ68J60SS8MuFcuJndasMFZ54/QFluazBt8DwjqpwWz02zHqTZhBek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGvQzfYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGvQzfYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE297C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738387553;
	bh=U+w+Ol4CeZk5eoGerMeMQhDe7Hw42haSqGI5cx2+6qU=;
	h=To:Subject:From:Date:From;
	b=FGvQzfYX2gEg390XtBIfeQ3uKXrFlHETs3nHJ78Ni5N36gIibirnZK2yE/En1ar6n
	 +yK7TLy3M5OFwiAkHwKOB1pNlWpWKdbiur1dSz8bapvWy7zf+YGHIgvzlVCINetXtA
	 ttx2+0TtKRBq4DMoS1ZiAQXtBu3sgmigJTXYSv3bKMKbltALJ71PtR6BRVv0vQugdm
	 q/oRFCeXcjyoL6C8jp53MGHdjJJCWVFRz9iCvtIrAgUVzr/Be/JFDcwEZyy+VzIwZs
	 EWj7YRacxkjXtFQ3OBDdQ1HthOyJcpPjG2Anir2v5vWa5B+lj19niX5Mzx2fJ6uxlQ
	 OAhqyC3+2GUZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9206C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173838755365.10593.14164673050070589682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a11675960d129cfc201cfd98d71c5dd82b8c1b120faa0d084f25e068022752
Date: Sat, 01 Feb 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738387553
