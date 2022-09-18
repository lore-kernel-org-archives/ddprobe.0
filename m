Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20A6648
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76C7FC433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663480253;
	bh=MhhRRoijPoW12PFgXFKIWQ1aiH/o3ju2vTWl9N3xsPo=;
	h=To:Subject:From:Date:From;
	b=lFtB706U5/0eXPXZZIqDmjDUHFAEiCpPi/CNTuS05mYAXiKoi9EFc+nDGcw/zfjia
	 npEiUpqOvEOIWONgdImZTJV78qPQ9Bgzkc41YcQ8iyFInfKxbltSAd+5AR+JASs/VU
	 beeeWgE8xGgmM5LzRT9iu6/hBbk0WtQYOXfK0lxiKT/Ani8nKRgFfLF7RJ+fPuJqCT
	 CcVXjUWmvAjNszPL/PMPozS/iBPMVecLxKp9+s5VcqPuDfuiYisHIFEjHyc3Nu29yg
	 Ihs93c+URX3av4r34lkxb4d2nh6ivCOeqzRjggojEtwVRmjSoFx1NMUVdeouNTX/d2
	 WceWsUzWIqi/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57C7AC32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166348025335.31791.10990492021830058379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9bb01501185b329b693b28d90c6e79482412eed4393375d51b14d5245b4a1c2
Date: Sun, 18 Sep 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663480253
