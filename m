Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D413C05
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 16:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656432412;
	h=To:Subject:From:Message-Id:Date;
	bh=eZc8bytxAReFXSyPB1x0RaVwnEHHGqsMidaLKvP+iQY=;
	b=QyJ2gGZ0J6qC/MWSp672heNOgv+j+nTcqPfKvC9knbm5rt3wuRdmKXZkVCtxjYGa
	3dnooJt9qLze2D9dUKKl1mMEVpZZ58cDG0RROXVyaQNYSSIKzE6hO63P8BKoEXJaoRe
	55nI1oPFABOPS8wlf29qn9lej+dYeST21AFwzzjU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656432412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eZc8bytxAReFXSyPB1x0RaVwnEHHGqsMidaLKvP+iQY=;
	b=T1nD9USOMt5Dn6+nklCFYUE2Ti0Dv5z0Px/CoDgr5dsPg+YHpaOPLKneT42sC6dU
	5vb95lVuiRLwcc1jm5HuZuFod2uBJX2KeVGqPsPcg3QWrDq81xIVaHN19pIZFwRdZhS
	ISseEmbfLQzhDC6CymA0bviM/y1vDhYRYgGN4jQ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ab10c6ab-d0ee5354-5e2e-4185-909b-c58340dc435e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad72de7b824d9671729a77031b2fa26924ccb248963158775c8ce543fdfd154d
Date: Tue, 28 Jun 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656432412
