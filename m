Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B24AA7B
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66F27C433D7
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666800653;
	bh=H1NLZEq1tUIs59H/qUlHT+SefQa+iwQ43GC4qr4OgTs=;
	h=To:Subject:From:Date:From;
	b=uqeMMgVJHhTRlK+mt3z8V5+vNaJvW+IBTWMp5gK8oKJ+D5GXFyfDn+JuL5sBm7qp4
	 H504K+2LFYQu+itjlbgnApocyButMMEyhQjJ/wO5wEU2bSjz5G+fRhf5UYKwMyKnk2
	 +JFiWRvAkdeZbxFkH6FuYam2RSmdDh5phj3lGZrS+lova7u7FEkwPsHrM/Gb67+dME
	 qzsvhDTdohY6SYcDgVCcbVC7RJbYvN3rOdKLVLa1kk7Pv/hdx8KmDxV02by/89rdph
	 Yc5Dg7Dcu0K6RhGl4f7Z7mFtRIkPl2vt9sKwfzVkiTAW3l6pO0JWzUy9CTznuXeXE7
	 Zzc08Zx7bwV4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509AAC433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166680065332.5945.1708158903177458310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b7440ce4925f42423cdb5bb816f612eb8c59c509ecb79509e66cef87218fb61
Date: Wed, 26 Oct 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666800653
