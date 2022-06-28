Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006A77A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656411412;
	h=To:Subject:From:Message-Id:Date;
	bh=y4+NJA8vtZg3hqveyHHbMxoBrRgteSctZqxbtmv/2U0=;
	b=WueUZYTfPgkPZQYiSwq6i55Z3XiAkc/bhyoTme+6bO6ef0Qz95kEmIBqK+5geyuh
	oia6/auoui0UWZPPfkz+/d0QDQgThQN678hDg8S/nLJxTdtByh/WDjKWQYIudhmkog2
	oA6p3KtD9Wd99hLXIqRChzkpgp2lOvgmVb2bPHcI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656411412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y4+NJA8vtZg3hqveyHHbMxoBrRgteSctZqxbtmv/2U0=;
	b=NLacyDHlqi90zwkKcbKXxpPnRehiQtefa5+e0lUV3uAiLU2IizLindvAtyD/v1+N
	/x/nhlNzmhUUdn1qXj/TkjasusmQuGP4U2FHoHYrfdCMj6QfNBLjSfKuRF+0N7rcA3t
	I5Ck4hTVRH2Lp5ZdW76f1jfPf0228hwRuBPyiJt0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9d05755-5b4d2d03-db0a-4f2d-9318-1807bb04f5ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc38e3fc5179e402b03e49300f33fb43b706f9e05ebb0d1b815c09836f0ada34
Date: Tue, 28 Jun 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656411412
