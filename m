Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDACAAD50
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C6DEC433F0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672855887;
	bh=3e3SCPCH6KfWrhG4rOdOgELdfBJ7tbB6y+MPn5aSHd8=;
	h=To:Subject:From:Date:From;
	b=vRimaoETZWqWBZXB753IlXiLzdOP1eiIopF2xsVEutoAj9BkrJLPSdz4DinSb50E/
	 SjM8dpn9YpqzbBpHELVFdpHI0JjKS8Uj6ycSDrsq8ENcqJGBfLhWLhS3SKuj18CDQY
	 7r7hPbVfPa3Ubuede4MdVZMwX62FbUDkRx46bepmIa5ouXQc85XegXKafoo8Tw8MK7
	 6sZUt6aq2klfMDJYd6+xmn1TRoYD02qGv4oOOjFodQwQ19RVFHKMAw7HaCYVmp+5jM
	 A2FFwRuJJa8cRj439v9AcZF/hcsbn6gkBo9LBrdI5oOXA4tceU50wqxmhn0zB42YBl
	 YfIpVZmh7Sx9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE0EC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167285588738.15536.9821383815026679861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0158d830ce5bc219e1481cc140dff10f61e3a418a84ac1bfed027d4ab2e115f6
Date: Wed, 04 Jan 2023 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672855887
