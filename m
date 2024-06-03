Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81C3E46A4
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717445123; cv=none; b=rJ+bHnrBd44KjbnYhC/JzYv5X1SrGgImKd3+crs0p9iVUbQNvKmgFP/WBx3/kyTYVt6k2k8s8j76chX+Eh3t/uwc3n7g7ma7WarV8SS4e3aVysZwAkSTY/ekBkuW+KHIV8Vd47VMS5De7izJptM/akcwIR26tPmot6MXMWQvw/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717445123; c=relaxed/simple;
	bh=5iA0JCDhIF7PV3K2o+2BBBbEt8UzYkto4gTKlPZ5ynU=;
	h=To:Subject:From:Message-Id:Date; b=E2Yf9HsNGsMnNksGf4v/bAYUj2+5BMXZT7TY9xreKZ7884U3VUzljJaVOBQJKge0h5htmShM/i30n5Q8nGOUxZIFfud9jDBPVXLWtECSEjgWf1n+tzFTAdnFRp8IfGg9Mxwe7F8bhimrH7lct8auMRZegJf/RkmAW+Ay0tyG1M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWHUMAkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWHUMAkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E594CC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717445122;
	bh=5iA0JCDhIF7PV3K2o+2BBBbEt8UzYkto4gTKlPZ5ynU=;
	h=To:Subject:From:Date:From;
	b=HWHUMAkMvc9wOycAzmr15vmKxdWTUF8wEhZpQFcnW0Lhnz6knSSxSppVjpHChFYl+
	 S/W9yzpd2GYUWux4kfcd0zBXcOdtQEADLv7Fcb9xZDejvbbK5IXl0xJRradBWGSGp7
	 cC4cD0oEx2ZofDRO8Fp0JI3pgh0iJC7snZwmRT78+s6bZ62ZTQ0N4mxkLOclPY4Ylo
	 uRKkSIc9I0g1Fb0FQHZGFpvqwd/h0MsWAL82MVGBbKgUQp5Pq6MZwVuSDoOR/aV5YC
	 RfxyDGn2U7zzp3FB0LjabpQegXzYnluwJHdQXa6XG84/gfqzM8kIamN2xu4SI73qHb
	 E8imAW2TXhGpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD70FC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171744512280.27197.11999050958185094162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0484faee32ce821c9343d8d4af84955cd3b8181c7268ba0664759fc2ffd8630
Date: Mon, 03 Jun 2024 20:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717445122
