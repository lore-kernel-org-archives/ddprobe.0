Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEF88003D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792018834; cv=none; b=DXW9/E1R8FxK7Z7zJuY+8pSyoOrkyGaocauvhyUBdYv4wKysLGaS+rTwUBkk+OUifjDilijpWLe4YiQ1aGu2Y8fhME/FejEmG0o9ExxX29Knvq/GJ7vwzniPQU5qklk61Pw39nv0LvwbQH3/BAROWA/A0doUM8gfRT+xQW/7MiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792018834; c=relaxed/simple;
	bh=HMxA3d4PiE1nUUkz/uhpY4P/HU+/KaOoHimKyiKfGRY=;
	h=To:Subject:From:Message-Id:Date; b=rNeAdjSURyXirD712n3kJNJV6wyXMlJd/K8+myDyq221NsjJpCgdcf4NdvL8cc3i8AyRgpsZhwveWzGhiiIN+8rSmI0m+mb5qJMYGZIofsGjSz9uGqtbTGlTVqu/IvTIN2huWdkUZM9/FFITjshDn9V6eEw/nBTpW3/Ud84oo00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laYf1IA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laYf1IA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6144C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792018833;
	bh=HMxA3d4PiE1nUUkz/uhpY4P/HU+/KaOoHimKyiKfGRY=;
	h=To:Subject:From:Date:From;
	b=laYf1IA33fSZ8BLPo7Ue34cIPaNcx1MY0RsBRrNIZRWqsUwy/IIKcmndubCl4sLZ2
	 gTHX6wkKkbzAvPceviC33n+uMsDvA5q2kVJTi5LfIBGEy5xkWeWZUhmRiIqJ3uCQk7
	 l9QqXEJWiBgFUBYlo4tMXsTMal7UekdDRXPfV/cqxV9G1yXyNj5gfNgDblPtrQEQyv
	 4nRiwX7OG8XUvW2AbobYLviCQDKmU9eORKVAIoU+SCqHFhH3+3JHb0LXuXdS9pIBHB
	 xrDwHbY84hVDma1nQHhsTN84ANdVH7z/N7mL8wEw7fIrotI2VbO16Z/lwrHwqyS/fu
	 aypv2mSwjwdNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF7ECC6B2D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179201883371.26530.6611654529902767924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb32fa68e94e6f9b5ca794f6bb246b94ee1d288369e4db7b519bbad039647ffc
Date: Wed, 14 Oct 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792018833
