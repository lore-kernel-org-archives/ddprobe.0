Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA0517A2E6
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767458034; cv=none; b=MDGZP+CMj553or4FOuMQHQbe0pHUekHm+D7+L6aPpdLTY5aECsnLnmHHOjaPbZIThcZ0dugNwgLAEHoHtB7v+SUIUGk1e+0Ea1ICRRmALPctAimBW/DDdXwEv6HqxH57CmTAX6UOVHN2OQO4lTGyGbwhIjkTPZ7BS/j9sV81q9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767458034; c=relaxed/simple;
	bh=oNHOTHmnvVYReNbN7g8zMuKXbwQzsi0d3UX1NNSemhk=;
	h=To:Subject:From:Message-Id:Date; b=OkxRtrGKPthEuONPK6xE7XT/oSCdGeqn8r6tp/Fni40Nn0+iAg0D7i6n+fOZJGaXCFRb9VyzNCOFHqmlM4Pfwi+BSo400WxsrUKUhmZc3hJ0y+InSqEVThlxn95Ax59T6f4GHUk7iUmL7VFEH9sSLQ3/w2TLHSdQSyIAYdW1e7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/j8BG0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/j8BG0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C1DC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767458033;
	bh=oNHOTHmnvVYReNbN7g8zMuKXbwQzsi0d3UX1NNSemhk=;
	h=To:Subject:From:Date:From;
	b=h/j8BG0UIkJo2O1DSJvEQ0K/uUDDtbcBNnoww5NQpGX6hRy+Vw0WPKeDsqeAsn/Di
	 3w7kwlm4vhFiXSiEFsiFQ4A5dVBeVlaOWmDZYlIIWGeqWjlNwy+/n/MxtebZnR+nqo
	 VBv5MApdJ32fhbhtC0wMsfKpB7Jry+F9ouhruzsaNbz0qImt7Ko5inpVICwqL8+J+b
	 /x/2bh9eB79cuzVe01UYRX/4i/PGi1MLIwVQ4JKl9GTvSAey2S/kJIEtN+sx4XWn6R
	 ZDcHiiQGyJ/8Kv4D91t+0OUfmV4ip+8X/DBV4O/+c3zpe5KgeHlv9fPV8kySYLjD/7
	 q/b7xeK32cfkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B07FC6175
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176745803357.12054.16563967396510287628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4cf5d8b855298db661b604ca9c44b091c4cffa59b4aa9a9c853aa1c5401efed
Date: Sat, 03 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767458033
