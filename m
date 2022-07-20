Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E4C3C26
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 14:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658328412;
	h=To:Subject:From:Message-Id:Date;
	bh=RZ/gREinDkjEu9JPxDmttWPbdIqZIHCeeJK32n/XAa4=;
	b=CCuJhq2jQC9ZMzH4ruxpxLr+V5AT7NEknCILgSBBr4l3rJRv1CrDS3lr30lq8Jyz
	ztgjBB8G5kLjtP+aqV/xNBnnmiAXKeLB1BOItepixAsHmOV7SnQ0ke3Fz7i83ltvBXR
	YFiqdQqaNCt+r38KiWyiw+cGyljuN5I3xq4tk3AQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658328412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RZ/gREinDkjEu9JPxDmttWPbdIqZIHCeeJK32n/XAa4=;
	b=g3bhrnwFOEYO/2F7Pcq7lKHkbKtwy270A8kk2F0bAD6uS3zMllQvP0vsQGb0If64
	ee3ycq5jHUUrrZsBJrImBnYHzqPOAN5iy1u9mixK5NGNoTI3ufSNu4JWq+Dtu482njx
	TrAMqXopHS+dpTfsCPNaVIATZfPTb6Usb27OmWts=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821c1370b4-e88babf8-a6e3-44ce-8f1c-8de223a1fb2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cd1cc86597025011926e007fab017b13669e42babae710dc00f2d2cf6c6370e
Date: Wed, 20 Jul 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658328412
