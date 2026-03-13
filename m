Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F652F3C18
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773437694; cv=none; b=hFtHpdMvPLP1w3Iw5MRlgFnnKFvZSPFjezCENFDgoBimibo8C192PkLYOEJ2jCkm2bVrb8qNUwHToKNwMc0ZsBrHhr4KuJS6c8HXUxMxSe28lxPq0wcmHCyPEQVQ4tqmaMjSNCKpQYeMVSsgJ44qZKB+JuNHw3sUPETAtbYGgQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773437694; c=relaxed/simple;
	bh=+DCOTaxJRGxZXy3VZYv/G6A53PYgv6m8x9sTah+El7A=;
	h=To:Subject:From:Message-Id:Date; b=uYjeVPcJddVRjVndvWHLk/Wxk9ifreNhaaFLCyofQA/toV5UR09IHI7zsX8MSxoIzxj0m1IaZhZVZ5jB9KvdPIORZhlcQNsxfeLbrA6qOPB0QRPzKTeTN8sPMea0+qze4riwdUe0qPOeA3OhIf4cAFS5EjsYCX4cUe0FxGre6FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNGw/zBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNGw/zBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A291EC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773437693;
	bh=+DCOTaxJRGxZXy3VZYv/G6A53PYgv6m8x9sTah+El7A=;
	h=To:Subject:From:Date:From;
	b=LNGw/zBvzTIV5PoydOF/jJdOOVeqfwwYq1HelGClf1R8bUHABp6YUNyJkCBJ79bzn
	 ka8Zt5ifvtmT3dvzNW0bxnkiyUdhyA/+Bfz6F7iO8+mlIHY2gkN6yXoxFaQ/o3U++p
	 83C7ja279H1TrqbM2rIwpPayGkMC5hbbQCGt3rkXFlrXY5pGuVUQbZqILgnoo3mnEL
	 V4H1ZNFPwCOBvnx47bMet2gbXe3/IoBWUMghPFM5vWe7h9wQCj1H/bpnKj1Np3Phho
	 E7x6UkewonaPjW5qoITlextptnMiHlOM1J0JwTtTPGbZg48sacugv22nwh+WfbdSGX
	 d188lJ8wWPViw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F557107BCE6
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177343769357.18703.8287747419025646956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799e357edc3899f831da6b9b25060461f88e999acd539dc314bf397a4eacfffa
Date: Fri, 13 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773437693
