Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D749368948
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772256294; cv=none; b=XhH9AHpimenAQggIwEWG5c96ZNLDQwDQZI1x4PkSlz2X7wC6zR5Si7kjA4o7h6ctEcoqRhnBOC8dHAJYHp4tU+cQdZ24Usr2opVtdJfXexXEvlYNbzW7Q5XzjJwl3sBxROUo3lOz/EYnqlhYJ2YQBhB7kbZUfvjIV4utNpOE+vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772256294; c=relaxed/simple;
	bh=6bxXIwrpd2VgyO+gRvLKEyaRDgbC6EFUvuS6CdmwZpQ=;
	h=To:Subject:From:Message-Id:Date; b=ZWZrJZlimfexV9glEhBWf3d0WuohOY2IJBKjhElk4sUN2NrYHh9rER1sLr6yQy9dms22yDXdPORoX8rARS6htwEpxBXfuY2Vz2CodZrfJ87UFcMtV9sxPnwTRZXDQWgxcAYQhr9po0C7xv3YPrmOfGak+ebP2ofoR09wK6zskXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2JCEuvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2JCEuvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D48C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772256293;
	bh=6bxXIwrpd2VgyO+gRvLKEyaRDgbC6EFUvuS6CdmwZpQ=;
	h=To:Subject:From:Date:From;
	b=t2JCEuvBRUW9s8VM69YCpO6PdjfwHdoqdSKMa/SqYF1h4bMLZ3eKSCaARRLv6rt0x
	 rQPdPqp8BF9Dj3/7vUJs0Pri7PSM/hnxoYl39tecY+iA+azZWcr6euo/W0SJkwSA5A
	 XR0ayXRBbtSEB8IBchRueLXsojbizVeNZoiKsoVPylzIqiLfZa3ENFgi0Zqfls33/y
	 DsjYmsugk2an+yifmf/GfghTUeBSJGVbqee1YXbjObOMh07JvcaFv5APIuVGSFZ9lp
	 +vx+RVjfa9gb0bLuKsShmBE4R+PGU8JJblpCilY6TbhY56LjpI396CxYAQRRHDVlc4
	 xKNUtzFrkqm2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E2FEE4C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177225629358.8585.9372825332126293131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e04710e9beb308bf18b59a69661a00511af3cff23fafca46b1cd86913d57aa
Date: Sat, 28 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772256293
