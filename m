Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8061F37D3
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749469793; cv=none; b=s32/GyJXuQ9Gx5/3tO8JF+ASN3VWtp2IB2JFN+iH+8ADbeeVtk/CiOcuJablPOvl5dD775XaCBX/sd2XB605a7JfX3xXp4pwJUk1HUHU1C8FWwTLqOxSmQhEv4iO0lp7oz20vJZ49uVcLPK7jqjU6oJP3VHhs+BzcqIwtByD67E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749469793; c=relaxed/simple;
	bh=C1GTv4cCWYUWB8bUDG6sLX1FoER4bphjYcoDJTkvdvQ=;
	h=To:Subject:From:Message-Id:Date; b=CU9RlWjnFCFPxTmNABvdtFKQY3TZTbwao0YXWhzJaN2kH2XR9qRRW5SlPWre6cr6w/DLsQFJpB2ujT4/KnlWeYr54ZfAJENlcI5gLuCwi72tRDiYf7OFp/3KOLXQSaTP0VY2nbtw686tf5wSHiIbxhb835adBmFz1HWUW7xmv1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXYrn1D8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXYrn1D8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A107FC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749469793;
	bh=C1GTv4cCWYUWB8bUDG6sLX1FoER4bphjYcoDJTkvdvQ=;
	h=To:Subject:From:Date:From;
	b=SXYrn1D8Bj4eQrQvb6sBO2DnZPX3Lyv3/nso0g9h/SFmJ46b5zO5QMPDmX1MM6Fje
	 C8d8HwP+K2c4cWQFy8lal51SzgQz7zLiKZdNTntip9V3lP4EOZ/Dk+V0/I531TOdE7
	 910gMB7kOLOhUee803X/J14by5Q/TN+rHb7KN35Lkdu2exMXsLuyGyekNax3ZRsdU4
	 qGFC3CeFRGt8ZxlYXWdX/a5vMn2wmYyE/CZJy/U78faSgVzv4eg0mHDUBQkDq+K3hA
	 4d1CFOZ6/c0YzTgQgq2nRNS0Fvliu3xj1N6HwHH7aPZ1sIN2FXYKXkglKY+JTCok0z
	 j5uNW7I8E8fUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DA9CC61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174946979357.30202.15922202425463991934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950dfc28ed5951ec422a742bac1023451e3b47401b9052277638d90af4c395ec
Date: Mon, 09 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749469793
