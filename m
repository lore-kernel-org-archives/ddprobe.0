Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A191EDD
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HS7Dvivj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD4BC433C7
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701220696;
	bh=xVsZqrEexw0qjFq7A+EQSTC9htlEoU+DhFeFd7+gUKo=;
	h=To:Subject:From:Date:From;
	b=HS7Dvivj0+nOB/+iqOCKHozUEY88EC76Q1GsZyraOGMYYj0oaC3xsOOL/3fi5zafI
	 GPNilTbixpcwlOzzYdciJmxRG6FDcD7hQ5IeIIbJWc7R1FMon3F32bF4UdhssjggRt
	 5mjFGc2QhHyf7tAhGfJupUj7HH2OwzhkuGCWvQoQqkWpQjp3ZokiUm/DD9Lu5cs0CE
	 6rW6euYrotL8DQNPm6S6Z/SDiVmGusQVF9WM9xgPlRz4uASz5K4qRq1TEXYc9inPGQ
	 12n1QYC67oR+lKYCEi37woZu1kqdNMjEwoyOemuyEqqCKuWvahYWuJ+1w7JZrJ+R4/
	 3Fx0F4y3i/cjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC2FC4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170122069637.28405.5988333567105511559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ac4441367ec2442449b181f30a88d520cefc659aae78a735a45b7d4ee2eda8
Date: Wed, 29 Nov 2023 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701220696
