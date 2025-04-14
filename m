Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AA81E0DD8
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744668594; cv=none; b=PFXJo85p7jsyvCD9U5Uy7jNll8sfg2soJ7Cwwi0fQNoCOjSNHd3UQOQfOFhdRtFd6ai2hp5QFPTlW9BC2CCmQfM766Z7WoS5JcF6uZr9Pa3MltIE6YUJsfv6sto//wEvDWgFnyidJjmoFPxR6CR7dqQCEHRKGfxFmCv9FTYaYKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744668594; c=relaxed/simple;
	bh=ExTt37Z5vqsWXlQJUAqJ1WKxQaXzOG80DtMWcKjnysk=;
	h=To:Subject:From:Message-Id:Date; b=J9Z6CmgRl6flgYvFhRGYvyiF7JrP1YLO6CRy1JkChxh3+oMZgQaFooxTpgUEguPF5OYsfuxCDgkhIVITlH6v9M2QP79UHGs6yYMU9+rRCLtk5b+K/tmsMFdaNRa3tQNoWE1oegfBM9XiFS8iWWiOqJ/V5quGWQY6HxMWjpVXnrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kpe5T0X+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kpe5T0X+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8540C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744668593;
	bh=ExTt37Z5vqsWXlQJUAqJ1WKxQaXzOG80DtMWcKjnysk=;
	h=To:Subject:From:Date:From;
	b=Kpe5T0X+uF50WN9IDrw2uEXHQFMV1vbHRUpsfXTjAwHC67YxFQdus+2cWyBhgLM12
	 YnzgMzWYu9FCYxYa6EIFSNHrIS023SmQeaI/CyKaIiC7Si6EYkiy6aKHjEpDS+5COR
	 U4/zkrbn0FAc8tk92nGFl1tEb45+CBW3oTCygdqb1eZnS6RwC6qsOY5EUS2W2QDfHY
	 wYG/KH8mRPMTs82dPYF8040TOQ9AVWLF3JLJnmdk5MiTvN00aTT3tlYKQbkL098ldO
	 MnTKw0Y7uQvdP+dv7hMN3fy33FIatlZGFu6hFKwow09+EIT4cm4dJRYT7BM7+fEgHc
	 pH4w8DkVU6Vsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A07E1C369B5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174466859364.5180.3168016590530783852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50318893e8741fcfae6f35b2aa184474c1172c06de717edb41925cbebdf542bd
Date: Mon, 14 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744668593
