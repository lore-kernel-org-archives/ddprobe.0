Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D02B3D98
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659209453;
	h=To:Subject:From:Message-Id:Date;
	bh=QPOsBbpNziHOMr89/0IpVswVTvH6vvuuVRMKWPOxugY=;
	b=bAT55QpZiZ9aCTi+Em//sGLeKL1SJF0FGHyxOM2v/Rp8BhEG2/oX2UaaiTj74zTx
	kMYUAyOPa2oGpzU8MGVu8tpRUOvQbHXN0xoPRauCJ7I+DxRKFeyuIqVIJ0dCnk4uUi9
	CXK5Rs7EBzQHsS/YEiQtvgNC27ZIg+0g3AVFYJjU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659209453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QPOsBbpNziHOMr89/0IpVswVTvH6vvuuVRMKWPOxugY=;
	b=LM/M3PeYIdYojQ2dduzXfzm4ERSCfahvIQ7Pi3m7+WM6lTSA/Lgp6sKttuSC08Dl
	TgjK7NIdZNnJnODG/tzHAruiIK9Cwro/LW2YOMLjox5lLUm2gOTwAWszUadcsbnWNCi
	nEOZ8Vpaltmk+/38lxcnSOI88dI0lrOC/i7P1lfo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018250970cb1-92ddf577-987f-46cc-ae91-f68967b45722-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 189bd4ba1f18558650cd2fccc3f719815dec83293f3489e84a2c83d684189d6f
Date: Sat, 30 Jul 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659209452
