Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE18602F
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 16:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658336212;
	h=To:Subject:From:Message-Id:Date;
	bh=nVqEzy/ySnX8Kc6Nw5DcI3etI80MWNvPxvtzCj5cQPE=;
	b=PHWCNa1peTPi4qvYzZ/SnKaserzG1wAtuJEmx2WFbhEkuXmvNxEBL2yL2xVyg5OO
	mjW9Yx6rYIe+gY13qddxXrvM4k4YWAuPWNhNFoSnF7ntZX7FhIFW4WxnCfcfOQb8JM8
	V47onBqRjfQE0R8R/6jc01G/U3KeiKg3ptddtHEg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658336212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nVqEzy/ySnX8Kc6Nw5DcI3etI80MWNvPxvtzCj5cQPE=;
	b=k/9pC9op/HXSQNLYX+zR0Q7iW6q0yBwmlH3EqieLZypvf5Xabnep5knvKfL8pDR9
	K+bjnVLpMNFEZtBsBb0Jl1L6WIom0QMwOwfOQ27ax4v/6l6VdvN9jR00OqwDqvA2tbU
	m1FBC8nk5hDy4LnYU3DmzEQXIQl8Li8ttnEXgsEM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821c8a75a8-6942ebaa-5b02-496a-93f1-ee62118304a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2ea02dcd2deb85f12943a2898d03a86dad276e8201d996cf5c2ce06f92a7fff
Date: Wed, 20 Jul 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658336212
