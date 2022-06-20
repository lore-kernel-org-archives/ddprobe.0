Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7357E7E6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 06:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655708159;
	h=To:Subject:From:Message-Id:Date;
	bh=MZTp5jqqHAC37mfMh1rYcqHOMON8mHkFP8A2xk96bgI=;
	b=D609qw28Gv3h0v/j5ZOsoErRWAaBUKD68Jw4W6+TjbMd9cOmtQtnmQ4Hh9JhlPqY
	tZEbs/frdnMgTiArgvbQDVIlTMk39UVlHNZOUkJYhlFkvvBzlOJ4UGdeCxcGEN31SKe
	cTruLEmnhX/MnKIuIAbMrvANjQp1U4eIULV+o4Qw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655708159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MZTp5jqqHAC37mfMh1rYcqHOMON8mHkFP8A2xk96bgI=;
	b=E91+WmdSG/z37sqJ/bwH31d6k3IxFiHqFcNv0OhuwOMopberizHjlKyX/Dj50Zxi
	O/d2MUDgfm9xzq9PhZ70ymXOyZMxz6xE4jj0uvYxFXaRqnxRxgK+qsTisDeKuJ3Ut4s
	AApEhNx2JtjGkFTMnonhOksH99osGIq8JgHVdLq8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817fe58d2d-f0903fda-bdab-4a7a-9650-6513e5db2d88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcda5dcd3ce43cf966029c6d5c5a666bffdda0d0ce3e5dbad60571b666f8934f
Date: Mon, 20 Jun 2022 06:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655708159
