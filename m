Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0639B134BA
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDkJ1lH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 801DCC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702700296;
	bh=/jtL3gbObKJ3YGfFROqZJnoaPHirou89rmDBrAEy0OA=;
	h=To:Subject:From:Date:From;
	b=CDkJ1lH6LWyVrEaxV6kE+bBl+wfrS5bL1R39p0AGo+vAgKeZnZa4CE/+8gcWkUwTq
	 BMw4N5LbnRSzxA5+0draC+5pVnlRM4GOGSQgWLIX/vLQJ0B9l6yt52HUchgRXz1GXW
	 O0Ad8zHMZBunhtSeOLs2j5X9YS6yf8ZAPdW7A9zTnO01g+OWA0/AJJLRmms/AU/0Im
	 rdH3szCfkhvDC/EO85pL8RKa9gC+GQW3e1wirfQMzNGO9BwyrGWkDsc7Tf/YblxOIp
	 HV+aPuNbHXlMZ+mfbRrhqoXUywu7JACpLSRidz+W4lLqU1GLr+NReJl5tcGkDG1rfE
	 1i4YSpOUhx9uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63FECC4167B
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170270029638.1669.10339947811868375637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2741af1b89204ff7692a1de3359db806a187e76e21d7d2c1e876abcef44e97d7
Date: Sat, 16 Dec 2023 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702700296
