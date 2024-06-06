Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAA92E639
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 10:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717670843; cv=none; b=BizujZNw+01XQGK0/4pqhrqarMLYSPBhP8bT9ZGqcVbJHIR1UjOHKb0Umga85nfjbrqKODnRG0KH/kOQZqLqBGAW2UgowZeofYJlOro0cFu55WA7IowfMioij8P4TpN9cp0Y52n/6SUxeXggJ3MJtc7n+2iSqIJZm9qmPK6Q0rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717670843; c=relaxed/simple;
	bh=2Z9nNWTUCoqOrWSZFKC1cUjdvyvXfvKPJNQwyovxTm4=;
	h=To:Subject:From:Message-Id:Date; b=ZbxvYzWZ5YC7JXE2Rb7juZtO0mvqyNMbLv6wZzRQYAb4+/kUpkMLzDwvt/7tRyNJ6pM/Sk0Idx33HdEg+eUsTigkhOoXIA1rnU+k3KKwSomf4BBlnBS3OhwTywSzqO6V673iNJMj5n2LkwR3N1JRV7pfhfJU8b6lmAZBMvFI1MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOJNT60E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOJNT60E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBC4C32786
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 10:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717670842;
	bh=2Z9nNWTUCoqOrWSZFKC1cUjdvyvXfvKPJNQwyovxTm4=;
	h=To:Subject:From:Date:From;
	b=dOJNT60EJjl5CKrXhJ3bghGGHJPWOXwpcjXIaSIWCjND/HA20DbXOlTkr1WsGUVUl
	 xvpJF/VGFvEvDzhTSvm5SxU0bIrh/nreA/CB3sCcj5kuyUd2J6E6A64QF9N/SITDtb
	 hU5rtRacq1IJJHQpDv49Eb2svJjV3p8s24AQVsTHmRqTR7bUOPDAjv/vra4Tck56MF
	 ilCs2Kr4UYQ6vaSFVnfdFds9SN8H2YwUrDOEZO2/SfoQkqIgz6Rorif8EZR845N02J
	 GxCAx9diOweUGf1YhJ25ZO30kqulhjLLn3Ncd50zDbN9nY4TtKhYTXqHraYcFqqBoW
	 Yvf+fQ1vnfntQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6189C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 10:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171767084279.25870.9995017792926873005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18ae9488914c64ceebcae84e27c251a03bc78a1de2dd2f2e68bdd6aa8b07452
Date: Thu, 06 Jun 2024 10:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717670842
