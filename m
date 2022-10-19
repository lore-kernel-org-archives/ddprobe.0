Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD98D15A0
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E60DC433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666156253;
	bh=6+UwG19xkGM9eEWRPfdJar20cnzCqKEZ1pEkkVYW43Y=;
	h=To:Subject:From:Date:From;
	b=Nbrn/d8U9USon88kOYhATebCIOOfpfwR+GbXh+/LfLAJy96JUDZRL4LXBu0ANKNKY
	 lgMWiMapmZOg8U531IwzkPXYzNE5qo68OGs9x1gW4PMSKGNa8NuwxgAJMexzNTUI+h
	 h0Rs5CnWGIV6CcepgZb3Iu1wgiez37CSRzRd1qg9+UTqLEK8Z8ddZeX48IC9DXqD4q
	 iXvbIQr3EE1nTQ6505Zpjf4QiE8gxchY300gq304yj5KkuamFHG/oVMrGyfKIT96Hv
	 U011dlLcvYtA58S6xAYRuwZJPOtskgsMUdYxqr6gima8jDHd1L1J/9okkkTuwcJJdS
	 TmiI57oT9hoFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50823C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166615625332.27829.14417004874967337851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f57d1acfa7f809a2dab7b33a47f502c7c871638ac2187a0172e999cb15acac76
Date: Wed, 19 Oct 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666156253
