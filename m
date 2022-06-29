Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7207B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 16:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656520612;
	h=To:Subject:From:Message-Id:Date;
	bh=+4JljzX8u/FeIylGvrIv/uDf3hBBrB2YoT5NgHjohS4=;
	b=Pbxz5U+oTCW1UI8lYvNXRn5vVuyRvrIyoJCupf7Yft+ifFDxk7XH7oaGCVifxDXq
	m0/SFmcBvUL8+/HpnpmHIpKsWEkYrnD2osdH05nKxOXoe/06597BHwUnxNU+be67vYD
	w+c8ilwe2WFW5Bni2xC59amFdR9BdnMgEmId0Z80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656520612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+4JljzX8u/FeIylGvrIv/uDf3hBBrB2YoT5NgHjohS4=;
	b=IQ/r4uPX0X6WGZuw3Mv/37kfQmQZ+csV5xQVFBJhBUHnPpq3mNMbPxwF6yPwfqNd
	+qdOJv70jsr5L/7YX1eqlUgdJS6OxcJYyvo8k58WSxa6vBdKqyuoXCDoD0qvfVmQtbS
	1M0JSaodkTOT1spfKihBNIeYw6Mdsyiw0SXqEK9M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b05299b5-9d0a504d-a32b-442c-b8c7-245c3b520adf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1572b2d57c85f86dfe1aef7f9e8e5f58cdb234602248033870bc88d6d6e9f04
Date: Wed, 29 Jun 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656520612
