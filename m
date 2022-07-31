Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694DC15A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659246052;
	h=To:Subject:From:Message-Id:Date;
	bh=NHU/0qMOOIl4xqRmsEc0a3hrumyttLCuG8BWfjVrzfA=;
	b=SJTUV1pxfG7I1/+4Pf9n9YfAx2PmGmyBfa0CqNrLU6AzPQgM4CNrjAkhDNd9Tc/F
	OBXhRnXGiV8s9U4T0ui+0HRDnC7/gtPtSNyu9vCWpY/+rR9h1YrJM/Ep6jzp+60TxQJ
	WOHvbzbYa9pHoLVb5riUWeDrWpG9KsXA/jgPmZJk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659246052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NHU/0qMOOIl4xqRmsEc0a3hrumyttLCuG8BWfjVrzfA=;
	b=Ayi5/j4Ezc+FSRvZSfx5GFefAKPVpZuhmmKSr/3SZ50W0LKCsoOutKZl2vqFhpw6
	vJ5ZhEfMugMnkvsQk1ae27PVNkdyWK03i0yq2LK03M0+et4vxgW8ckdLSciYiroOCmQ
	koopQ9qaqv52NU+x1XJWMpyXyVC/kmd65Kf/Jmuo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018252c584fb-18193646-33b3-44dc-97a2-90d6ed494bc1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adfde1c460ac6ade6fabd4866306e7b8753e35cc515a072fe45a289ae9a741c1
Date: Sun, 31 Jul 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659246052
