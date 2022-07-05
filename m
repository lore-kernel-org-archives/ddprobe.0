Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00FA433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 13:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657029412;
	h=To:Subject:From:Message-Id:Date;
	bh=K3PSvuUr5KwmcGfjrAwtrniR2Z5EIdizix7Y+0m6Ku8=;
	b=cdEHY0x8qqiSqYzjLpcm2Jm2eXJjJp8CZ7dzymCnElyQd6JcSVfbqcXNwnC/mepz
	h1M/SXlt0IYqdKtchTP5ckQ5kreZ/v96uX4wND8jY78qpUg3g5qmYpjFclsTb2DPt/B
	z93mqB1kye7caLnm5KnEKyMJwIxE1k7yjGlbngjU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657029412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K3PSvuUr5KwmcGfjrAwtrniR2Z5EIdizix7Y+0m6Ku8=;
	b=BJfdvyAZP01rAIKOfkbbd4ZpYBZq+d5ju2fddN8AlHtYEKrGRiu6nFHRYk/w0t6A
	5EAKk83nK3hQowUzXX6xMpD+70nVC0IJMCDkRdJ00RGN1JLnVnpSomFs1YE8usCOvue
	5cllt56LoGaWGhgIDJUprlP76UPcYK9+oAJJ8sAk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cea64592-335c4032-604b-4d77-b617-d175781dbe31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6a60dba801e4c74ce645a30f7c82322ff56cf7ab705949929e0dbc1e5f8b5f8
Date: Tue, 5 Jul 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657029412
