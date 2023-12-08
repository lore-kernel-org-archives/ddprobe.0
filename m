Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085F34C60
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kl+n010G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7613BC433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702006696;
	bh=Twd6L+wT9m83L9b7afoFcWGvgFZlCWLqGs+5BEUlnYE=;
	h=To:Subject:From:Date:From;
	b=Kl+n010GxLT1xlOkqIfnutQ2QH00AJRocyWKh0SoPB4zTc+7MJuqupLtrpdUCr4gE
	 kwbgMm2pcC3wvKg8+eMekxnNDWMNvVcHrX9RWUi8jQ7+rz/ulzvJOAJn+IQzZl81SK
	 T/RdLhtq40qLfD3+AyvY1b78tpYR+HaTpzVbV18XHQ8gf6BHtOLcMk0lA2Dfmr8zh+
	 1O/bRo7kJ2ydNV41c0K1z8BPHkAFiW8inqZ6QlHTxkaVrSLaG/yHmhlg+fxvddMOKH
	 /jC19T5jw3/ZjppwXpoK9syOvbBOuRMWdAVOoc8/MzTYHxCuIibR+ouWtmF4rd75ut
	 JbtN+z49GNutw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC3FC4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170200669637.24938.6625389260682458398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7609a4d42d567684bb61ce097c1a3e8e33b55329f99e61fe5c150be744e88aac
Date: Fri, 08 Dec 2023 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702006696
