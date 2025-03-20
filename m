Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4BE226CE0
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 17:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742493594; cv=none; b=CeLoLPUIZ3aQbvMXUJtxwg1bv2bgvwQZZG/3sGVBgOuyTwgUlH5OM9BuQuyyZNDVcLqcka2XUKPsSSJBgM5Lu/tYAE3849u7NjFl/rlT4LNkXtBT/Q4W5uz0KUaqedzHZtesPXbk1via7NGzPmMvPA9y+VxRTbij5zYBqf+nnNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742493594; c=relaxed/simple;
	bh=HbXeaBayvzsd4n97a4BIfuJWQULF1+XK3rcMt8sDQTk=;
	h=To:Subject:From:Message-Id:Date; b=Gn+QtSNbrAUE0h9ISYdRzqpeDGmd+EyUyOAWAQlJj5olbjt/gSSuYWvTgD9lpppM7+gXC9IEj5iv5SGke+4IIitcZPqtoUQpPk9ga0kqYqxawCnmz3hfHGntqcAMNKUPtsgVbyjzh17va+9M30Smx2jPYpW/gFCMrUueSib3j9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQDo5LPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQDo5LPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE9E7C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742493593;
	bh=HbXeaBayvzsd4n97a4BIfuJWQULF1+XK3rcMt8sDQTk=;
	h=To:Subject:From:Date:From;
	b=AQDo5LPkfLhnUQWwp00EKRQ3mnW8Eo/zHtx2KaJA6A+iL4WwP+PL/hHL00PNa3UCW
	 2hbYtT1UqWE07cq/A+yPgoXz3dC7MwqBj1jGVmka8iBXbHotBTiiPlYCWoYPnCDZ/4
	 +rLtkFOiyi7XnGoLa69u/ANrShuZP4FTVFBdZa2wBi2P9XBODc9vac3RVQNqLl1ak+
	 CdHFweq0jlRk0Mh4LWp/mRnX2kIhCVg7YriVpmNb7qebAneOmjiWxOIz6RjGx+z6Qt
	 4diVCjmTa1ERZ3BUIgO8JeAsDsFLy40M64XfOg7O6KEKeeFtamfUXpXdsPCYe3gk1y
	 Qv+hVXwSkCFVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5500C35FFF
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174249359373.3557.2450104441402832714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e3603773264cd5c96520e0e9bbf7c892835fe5faf40f9b6dd8dea64e08ce9b
Date: Thu, 20 Mar 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742493593
