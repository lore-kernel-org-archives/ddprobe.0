Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9834443B6C4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786537834; cv=none; b=ur1vC1afTfAQbdaEHzRdhCBIIOccnsKRZNy+GJCWfnhbQuDeaQg2IKT/Tq7VXjOoqveiiNfZcBxYczbuqf/7vfkTKJo2brnNf0PJTUIfZyxKJn7Hu6dDsCwjsWvkzjqMr/gl7JcSOqaXttidBnqDASLNwt+1Zar7jutRPMAtda4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786537834; c=relaxed/simple;
	bh=+YCN0+Ng2oSpwMIWOzuXKz9CleW/gYzgoCr1mPq/9HU=;
	h=To:Subject:From:Message-Id:Date; b=m8hb7Zhsy1Ypo1cGGraKK/iWHaqziq6OgK4d4kwmbBU3pZW7PrzWOyFGnf0/spaur/fMf95pMIiTB1XCbhrk5trCfBuk9jsBx/2gkQMzDOydCqJbqBp/2ApMijQWBZGesUIRfwZqz3OwF1PdvRAjcvTmKL3OEPiljIzsX7Gnzp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCNlaqN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCNlaqN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC27C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786537833;
	bh=+YCN0+Ng2oSpwMIWOzuXKz9CleW/gYzgoCr1mPq/9HU=;
	h=To:Subject:From:Date:From;
	b=fCNlaqN0wSKle1tE4LCIb4Dza6P4XlSut6ixbj6GZ+z17jsUlP2VU91sYWwSh5Yid
	 x+5mCsKfMWcKD78Vz2pUOPzXFkRuIVtrgHzkbAttcCH+xYY79V69XBuCYx03IHFG4u
	 I2goaGBuxJ5WijD2QViCsK0YjC7HJYp32tW7yV7S/W72JwTEdmM6XhvAf3vL8gPO66
	 KkQDllcw3PoTJUt4p8XT2mD50UDp1TeI1l+2OIfhT6D4JAZU0SzKw4wCHoZiB1u+90
	 ant2PIhNgOiZjoof36UoFGFPGErhb6GaIpnnsUTwyOo0cM71QECSs3uuIPOI/c11iM
	 0B7RK5NfT9bbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DD0C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178653783368.14586.15757343804471189247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82255a1c3451b3a8bd30d04f509617f87b2d4062e1f482f6d8cd59d6778b3d4
Date: Wed, 12 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786537833
