Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90E02F43
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 20:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A67C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 20:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661716852;
	bh=sLd9pnbuMlRPmQuRP3YwfeZASdU/4sJAASRaL4hLv7k=;
	h=To:Subject:From:Date:From;
	b=eqqXelq06Nkpv8aS7lrBojI+WRZoLT1tTycjAf2PmRXnYr39qfco87+3FFQyFcOWs
	 VenKXKfO0PzGSVTsgRj8n13x3/o15JdUpjPsbIq1XGIrCwslkc1ZIpuj7Vw9GfHzKl
	 /aEUba4Bn7UpYm/aYYTlMfk8jmP8YHTDEkJwbMueMrideERmmQbXlJ0RalYvH2zCEf
	 pGbOfMCLLTpwILPA/4Ee+cWJMBdbJm8FnoPAMJMFTCYo2yQHFh/bEjmAvJm1zD5sw2
	 ywo5+cNOEjlVh6BqqQg1BBatwLHUaIbc8AA2US1pNW5IKKhfAPruRflDrBG0aaw5Ya
	 +uNxQEC/jrwMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A597ECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 20:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166171685234.14643.15986357956959414877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ee83314702c5a692100e1808f51258ba8a527ac3d0b123832916111f6300010
Date: Sun, 28 Aug 2022 20:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661716852
