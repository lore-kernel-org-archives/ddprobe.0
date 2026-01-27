Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C8F21255A
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769484834; cv=none; b=tnc4+FL8g85DatxArGGYPURXF+NFZogFTtXii33sbDoQhSTDRoeTo0YreglvZ3yXtCxXgo06vEAk/KghS2TiWc2xVRf9A7lDBM7ehLvqnLE3bGZxWJ1WGplrfTJGbGTMIWN36fcWVDZ/AwQRbCBfSxgM6wIDI5lRIJZ5yBjZF/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769484834; c=relaxed/simple;
	bh=0mJhQvTqsXydLc+Hvy7ObukYdrhXwo9lQ1QPhRbFGvI=;
	h=To:Subject:From:Message-Id:Date; b=r8y7T9aHy86H4k1qRBWtwCLyRP+XKV0JWWaXKIRFKr05tJb0sCh2WYXW0dpMKhAiO9OXAlmWDUGKoDvgSJ0xuirhb8/zbnm/76690AGuLtAmNqR6uc7hIMnAToZ5deig7oLuxsjyi7MuPQ52qEIYTS62pYv3gRtvaX0R3tVOZ4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFWLpTq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFWLpTq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFEFC116D0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769484833;
	bh=0mJhQvTqsXydLc+Hvy7ObukYdrhXwo9lQ1QPhRbFGvI=;
	h=To:Subject:From:Date:From;
	b=rFWLpTq7zOecTzAz3GmmOjUOMeNJpUC+CJkDZuNCRrl/Uxn7HdiNPm76Y+wvT9Sqi
	 p1gdGxKYyDCs0dD2Uput5A4lRdN+6vAGKUoyHLb/TFsN7WvGWjV1aLK6ypXimdiUXG
	 +yUFaHAjMcvwIeD25mBY91Q1M2Ln/7E7kXIJ8A4ZAZ+eDZgEBK9rgRi4EAHQ3/hX8M
	 yGXGPNRnN2piDH3qv9gFd6yywsyuex4uNVbdYRa3+Y7NGUoVHUWyJ8sOq5Q9Xap6ix
	 ehY6xVAt8EA02qv2M2nDf3ywQJ5UqklDzEYX2TjjIzkoXNvxvS4KSNAT4xJgq9Oymy
	 s4dG/yIE9NXBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911CFD25932
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176948483358.19133.13898496787354734911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 060eee720ce4b32296b7cd9fb2bb981c76a28e33337bfd1658425c18239a728a
Date: Tue, 27 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769484833
