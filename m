Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7F87C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 18:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654539719;
	h=To:Subject:From:Message-Id:Date;
	bh=mOhLO9z8zHBiOc6mgsCBTlx7+nuKmOVHfDus/eZAwVI=;
	b=jL/E1n7fzpkd/j7tN7is21DLyCxixdZO6uhC2XRl7oP77u+a4S6lxRDvD+JmwzuS
	kRHJ9N4ONNHbSfJR3czppsEgaBPwMf9qfFsiqKqO8oI/c4yef/G/Lhdi3oZV1djPljc
	wNxXk0aKVXZ4mxlABFLUlpyTF0xgVWqYkh2wGrHY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654539719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mOhLO9z8zHBiOc6mgsCBTlx7+nuKmOVHfDus/eZAwVI=;
	b=XKKuF63ye0KXKjubmy6NNs3eNomS7SUSn72hXg/5mY/xzE34y5IAYfkdOZNTsokw
	NKBVF68Z1pMgLXYAt9mVxULtaAb/qqL9Izxmdmg54Gnb8ApYvU6sapWC0iG/aIACDJX
	lkSrRY8GS3MdisaoL79zln986zVX7xpLVbhviB+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813a409287-4aa0c8ca-39c4-4870-ae72-a2502f9f50ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c0dcaa8e09c473d542dfc07b94532b11084c2e81eaa8b8a642e67ad3aa2a65b
Date: Mon, 6 Jun 2022 18:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654539719
