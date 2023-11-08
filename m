Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E7F1366
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+X/p7mU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91D39C433C7
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699414096;
	bh=qrbV19W21L/znFhzZBteaaLi5GCP5dcXvA9/q2rMrjc=;
	h=To:Subject:From:Date:From;
	b=g+X/p7mU0i/dttV4wujb9tBigh77oqA8qlAHUtNiqfZUih6UAWX1IdT6s4Uh/4LMf
	 4X8zGQ+Q05jVTofgry/KVbg8ZUFQ4SvXC6veEd2wgqMksBOtPTC0d0CnLxIAIUExHi
	 nEIsozBzJ6G7Uk6qKoinDaBYbHweYhYwdxv2mknuJ+Ch3Wcqm7jz1UhSuMSOU0NQ9u
	 aIr8VxF0bHzcY6aYKlibOyHK8XJD2byiGhJSpdJw7+SImRorwiTnap1v+EzhxfNs3s
	 Fy7zkvIH0dQlZTEZtV28mqI6MFUdhQ4EIcodS2oh3sAbhc8tB2d5o4Fx1PNPrn6Ok0
	 Ibi/fiRMNkSxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71227C4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169941409644.5179.1390495262977073478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b2a54cd5767fd5a2e47e614f205f3e6c193b3a2908007e4dd994b4f666610f
Date: Wed, 08 Nov 2023 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699414096
