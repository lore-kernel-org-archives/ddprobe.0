Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE14183CC9
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728468954; cv=none; b=WBoCIXcT3eos6Cu+u0uPWfAKz8YVH0+JDcLTZaYBskW+VKa3+9dG5sf7I7HF/zqM2mRnezJ7BVElx0t2yzKvRA7G3NA/VCz9875rAyE+O6Tc+LtV8N5P0OM1CVI/wNdUlk65GGa6CvQ/mvnLv+6StMMLP0h6u0GE6uttaYn1TVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728468954; c=relaxed/simple;
	bh=aO//wXVmRi5Tyg1ug9PSoWAj9kNkUOXlnn4B7T/Wv3k=;
	h=To:Subject:From:Message-Id:Date; b=AZ6Bp9Jcq66XrsnqJG5V+Y7CX5WG22107G48dTY0icYjwnw6t5aC80g6Oe0qacs5SWB4HBwv1VueuXsjhiCVmPvJnb7Pe/LTfsbxJIjZwERqZ1rpM3E4AV1cLtoJu6Fe4m3aI7iLeeWu95mdqkSLDyoaAj5xd7Md3OLbYweUK8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ov3RyZ6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ov3RyZ6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5789C4CECF
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728468953;
	bh=aO//wXVmRi5Tyg1ug9PSoWAj9kNkUOXlnn4B7T/Wv3k=;
	h=To:Subject:From:Date:From;
	b=ov3RyZ6+yLgio4ulSbn3R2QvRyQnZpcV2VQ4SVLumPOsUY5p/kUCnIA182QUAb8aS
	 fBfQUYGMgZqmf6lRI+TY0OfTVQBOsZN4lQslmuSW69dWFUrIw9A8m4pQo/4Oec+X/R
	 A7znPasd+TvpUQzmNG/R7RwJa7KnWFGJi7wUEatKpzh5SaIJM7QFJ4MPl+zUzDN1IZ
	 KqyE0rUTzVPDVBFmtVamLzL/z8gxyr+tBquDhWaqXB8nv+eo9a+5MvXAxTbN5NFhph
	 Z8XI3pwEm+jsx1UsQWpDAhAr5yl1oYvKBIifAWpFbjjRY42F657WGRZUqnjmKFlnGl
	 wQyYxK7Ar+16Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DC7CF0449
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172846895359.11955.10753473401565031873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d030fd3e9de9387dd8ddcf01538279ac52c3eaef552baaca00cf065f493547
Date: Wed, 09 Oct 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728468953
