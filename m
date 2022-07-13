Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCC87A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657699612;
	h=To:Subject:From:Message-Id:Date;
	bh=xYnwYKTmf5dlbWvyWl4oHRJTAmCi/T4VmIkeCkkfnug=;
	b=XOd9DiI//zdoQ+EEiKSrLpA0latuwTHb/t1aRcnzi1/MUGmQzZ+lRpg7wvZ2872p
	L1JfthdEV++Tzqfe8De768Je5d/4ykHcmWZCyzY6sq0nQ7GAaX83/fMEetEfBgvD/Nj
	EXJgdYnya7D9+omCd9Xb6fduAmrdY9E0ZOX/KKGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657699612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xYnwYKTmf5dlbWvyWl4oHRJTAmCi/T4VmIkeCkkfnug=;
	b=BfqmvrCVlt+Cfj4DRoAXdBl/c0Qqc6nneWnRB/MDueo0V0IBE7tuzXYK/I9A7ELy
	hRCKbDQc4NiJsq66QrClH7bXaBd/cLSY/9QNMVNkA0QFujAw0uxB2gKmGTN2pI6A9or
	Ncg4bgVZ13/qnhnUuk+WWWvWqFmhqEYUdjGN3dEQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f698b6a6-70b28c86-1735-45fc-9273-ef31f42a91ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4aadfbc0dccdaed5c5dbba4826a5b4c1b614635ee96959d07a07ba083b43947a
Date: Wed, 13 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657699612
