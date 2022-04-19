Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5DB81385
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 19:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650396538;
	h=To:Subject:From:Message-Id:Date;
	bh=SZs8G8d+LRnJc02vQUixDPG084hMtTVZMKBwYd2oHF0=;
	b=deOes1fZ+zAp/AGidgFpScbygGnPN87sG2MHrdHqSWmOMDwajAqZN4TkLEnSKg5F
	Q6tQSBSxa7gSI3vZFshmodp30W2DErq5z5hoQMqggH2T/c+V0rjn0/iEZBtOdh8NXH0
	4PxJ3VG3rNj+YBt4KLsiJHKl4yej3JAtx55tGHEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650396538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SZs8G8d+LRnJc02vQUixDPG084hMtTVZMKBwYd2oHF0=;
	b=dKlGVEgptMhJgxHIegYcxUGS/4HHomJRVRjmOEOEMa4RztmEXt4d82b3x62JynQR
	3U8Fn8rAHoGE2DXzKKZjIQaEpMpUbQrU5sZKwJ7Gnty5sCl6YUtZu7IWiMg9EE2sHZm
	RzrqQbuHGgo6E3sB4JELVGTle8zuN23n4avTd5a4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180434ca58f-b0d32909-f3be-4f27-a646-47ac06bf9d51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef467177cf349228ed4ca1f32be9a8ef2a9cdd494bcff22a5faae2a801b8d3d4
Date: Tue, 19 Apr 2022 19:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650396538
