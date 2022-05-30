Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1732A7A
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 20:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653941339;
	h=To:Subject:From:Message-Id:Date;
	bh=oaQP9FoiunmUVDXPFPbT6oWhstKnilL8FGBWMFb3D7s=;
	b=ci1F98kkkcu7hIFi1rNrR4lIHxUueF8LF9WsCoQ5LYaw5C4OI1pI0zZTE1XVIqNG
	ZJPSIvXcqn8WYrU24J5qjmGedsFCB46+WOjpxsW6RUauCnnCbeYz7Ca+ItUGYa7Vjeg
	eVY5SPtMSB7RVRJDnLYOyPVkZ1Z9kL8B5PzYDkH0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653941339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oaQP9FoiunmUVDXPFPbT6oWhstKnilL8FGBWMFb3D7s=;
	b=KBZfFqm/LUcLOdAbbgWgvU+BChLVfiVfgU0VHMk0UdsYFxB3/vpxmGQqAds6n96f
	KIrS7ZRQ/rI5RG9GQ9yjrK/iuK07pkciMZjOeuVdG0f0zmMHXhHle3rJ5S6eQ6Csq3z
	8yrYtxUk5pMjFoKbnVjdr8y1UEAB4+ilBOcHwbw0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181169604e3-d7e36446-d1aa-4b44-9777-bf6064d703ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26bca602a9540c50fc23cde10e383f5051a392dc6e36e0fe72f28d70aaa145ff
Date: Mon, 30 May 2022 20:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653941339
