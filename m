Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AEC1F461D
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767491634; cv=none; b=lhN/Dii9GOj8B8aU9BzgXP2V5fdfQGIPRt/ZrFEIj1VfRUnMMzVao6I569R1exLvNDwsyZV1dEjGYyChT7XgP7isidVfUhzSa6fv6pljOLix1csMYXNbF6iQNrAN8HYO7l1xNEt327lfpIpBMNmCsQ0Z/A+d30Ftz0PossB2bbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767491634; c=relaxed/simple;
	bh=J+ZX2l3R2EOvRyCOMKcfZ3gShegRmgy1lxnF+6rQOOE=;
	h=To:Subject:From:Message-Id:Date; b=UfJPYZn2oCPS0FH/E/7lQGm7Mrjsw/bx31M4+5DwBrqwZZN7VXcA4ouu5zlLxkOkWRrHtaQRhcrSOUIVc4kslVGxDxBpTCbVeQnpEfsrKZU6VoG1hAMGI/7T5a3w/IvReC4lHmmAwtORv6LIip8UDkeIMoLDCQWtnTzWAsFi0FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDXpnNZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDXpnNZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC78DC113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767491633;
	bh=J+ZX2l3R2EOvRyCOMKcfZ3gShegRmgy1lxnF+6rQOOE=;
	h=To:Subject:From:Date:From;
	b=gDXpnNZCZA8LdXgUO82uLQiyvVdOL3fT0sp9g6RoUsnBF1uFkFyWDO4MuZ/aMm/qG
	 iCtAB5wsJcB8DLSekJOdbuoep0UD3yrNQ6Wn6ybF795cA5UrURyiUmbFI0UoijiNb2
	 TXqe6WqaIw/4Uh46TopHAp3gz59eEDmNiIlMvI9DBZ0ExVPpg7Ne1EzJ95tleKbZQ1
	 2LuHWA68w+hQq/H181hfQA2VZpCYbmEvRrb/Q9EnToFJUXMFvroygb2ln7Nzer+27M
	 4ZwWSu6Jn72uM8b+fUjR4u5X4DK2q/bDPuu99hDDRSu5G67aTPhdNMwMzTG57Wg7xq
	 8w6MlATj/jbpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9490FC2A061
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176749163358.16509.2559507268512365168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44e14b238140fae897f8a462d284581d7064386c216636e7aa50c7ee6d256dd7
Date: Sun, 04 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767491633
