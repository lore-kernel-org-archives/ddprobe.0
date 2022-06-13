Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDFBB7C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 20:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655151059;
	h=To:Subject:From:Message-Id:Date;
	bh=BgP3tQus/ZpcaO52rBrFa2jSVVhH5p7L0FkbbTB5N0E=;
	b=AtNq95SFlU/mYyCloWX41vtXct39l/RewVh42YSOvBQO1v4EjeNKbaO1fqWHZ3ip
	alope/JVNTwNvbLSG1Bh+CRYUo69rW8haMbO/x1RiQg52mfUpAeMr6C4+20/xGGfySV
	IybdNABmW1DoY/GK+BDZY7Mcyx/zbiWRKnwupLoo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655151059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BgP3tQus/ZpcaO52rBrFa2jSVVhH5p7L0FkbbTB5N0E=;
	b=DN9/1uPdnE204Xc2XRHt85RFsC+GKaG80LdAnH2E5HjN3WZxP/Eq4h3Y8z5X19md
	v3K2G5//zkfiqDkkaxNyJWCKweSsM9/f/+EQbEzAwnOXfpfTC7rRJw53W2ZLPTfQVEj
	/4JYgUh3WiaPReKZfySyjCHTdwpIjItvtB3gkmUw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815eb0e11f-01dacac3-34f8-403d-b90d-cdb525cd5a9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 915bffb277b647bdc1ee3dfecca061972d41e8083fd361f7fdb986ac26a953df
Date: Mon, 13 Jun 2022 20:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655151059
