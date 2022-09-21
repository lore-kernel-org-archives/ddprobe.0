Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5CC7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE39C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663731653;
	bh=i01IhIQ86xnc8uuMKk4vgrmMo/H7cT2K2fquyPCqTbA=;
	h=To:Subject:From:Date:From;
	b=U6d2sZ6kMa+GOIfm/CGs7irm4qN91v3Iw5uaf9xoOxm+84MAPWFS5o41Tp6XrkD5t
	 LMJOzjaEOfC1nBv2X3kizSoh9sPJjpZDxd9rU75h2v6i2hwnJ6UV0iNSEUbPJ6H7A4
	 KD0wQ6VdI1kXqx2D7LhR6pHoSZlgJy7Z02HFG81ul/o+sONdNmkvbRw06BTGETORKB
	 MsjjHagDd9ib/2CgFFdR+UqbyX6dKgF+GupJswWAWJDABIueNl2gPCarphwWO2Jq6R
	 3EsPVROtj1jIaF/oMslmDX3Ge8Ny81AM5bqQHOV0+iKy9bOAgiuwgLwuNYuq070hPQ
	 DM+4FOc2NbGxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A3EC32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166373165332.13259.11965518219275053083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef634c421b6f62556b60932ec2d5d255d0f5966dadfa013308d3c09ca36d2842
Date: Wed, 21 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663731653
