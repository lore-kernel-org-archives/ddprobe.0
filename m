Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E55D365
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659523252;
	h=To:Subject:From:Message-Id:Date;
	bh=AHzK1+qOKmvbsAJyiGqeluN78b3nZxIy3FNwte8Aads=;
	b=apk2VUYKOGOxuR5V599HGRRp/K0lOLlS8/xucaOnLziGrtYge7rTbEHp12l3wDG6
	KfdEk4m0Xd4YSQUyR5ghAb711AEkZB1S75qAZyIcOfAVi7+BIKz25giIN/UyVbwET+U
	NytOU1K9BRHR3u4sjXMYSKVWxr/2ZUSb2rcepYes=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659523252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AHzK1+qOKmvbsAJyiGqeluN78b3nZxIy3FNwte8Aads=;
	b=PYYqwxOdMnCyyt6eSLC2GHTXSPce7fWiu65GWwkPGU4MR4AoR0D7UtfonVJNcwDZ
	IIxeKErnNTEaryqG6e/5DiNj6OXSUF/MzDoagCdQr+7DrGjmejg5rpyJWGzGRZKIscK
	SnItZ6QwzVBObffmZT7y90CK8XabyKdfxFNb5amM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182634b412a-645554f9-811f-4ec3-a1d4-03903590de48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6befb35a65ee93b37077377f55ef6672cd180d85c4f15153c5a071d21317b4f
Date: Wed, 3 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659523252
