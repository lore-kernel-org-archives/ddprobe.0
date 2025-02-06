Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2401C239580
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738874755; cv=none; b=OlwVQuImQ95bwMkvSCUo9c1Bcomgs4LAekk2XCn/nISctXsLWAXSWGE8bh2SLBW09OCsvSZkcaX1mNHfNO6LwwBEEKSn36x0H/wMFnDtHFwNus04832bBqUnNwEqnOnjBijVwObedvJ11btIlZYnneJ8wpC3sBcMHeBunUYyx9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738874755; c=relaxed/simple;
	bh=I3hkN/T/PufyRVJEQdtRUreHHFJAYuNBrokA9i1MaCM=;
	h=To:Subject:From:Message-Id:Date; b=HZZAIRsVXvz0Wz3ptSuqLgXjUt3hAIKRazV1pGSJJV7IU+OuPTCKtNEqmdsT6K8fn8IKO84xdUmpl5E39oqF2bF8yiY/G9h1uvw6smSYuUQMgA3xzHPa6/HSfl07Lmq6NRyBTHxYdHLZ4s/burTX+tWBHkOx2su+BRwNpfPNgLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vn4ATAne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vn4ATAne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59A4C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738874753;
	bh=I3hkN/T/PufyRVJEQdtRUreHHFJAYuNBrokA9i1MaCM=;
	h=To:Subject:From:Date:From;
	b=Vn4ATAnehkoiU8C1b5Vg0HH5RmV8GTQFTK8wnaqirnT/OYGP8/vyZcyR3tIWr5SB5
	 4n4/pSJUUo8uiyRSizNp7Aae85oMg5kuQ1eZ+GdVfcIJ7miO5glEqkHnXJumU+eR0n
	 W8GnV2wlvtiWJ1snkaVEuLln2V6hmpjcSAnea6gzzBjAF2oELGV47qDNULOeAlvMFX
	 MIl2ii7Gjp887jQ3UNUVP17ve3D7KAeTRI8ZODF1n/183dpMnEZKNmILmIRT1a+Dgr
	 btufgFf2Ss60aompSvVUK7nfM3NRLM9bpz+HSTWwMxmryEt0w8UtpPBZtRMlWzWYmW
	 VEkwm6K/Tx4Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949CCC02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173887475359.24480.8823898093547929280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88532bfa1bff503b00313bb6abb804aa59de7b56f636344f4843e1b6371c85dc
Date: Thu, 06 Feb 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738874753
