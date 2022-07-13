Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8E415A7
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657709812;
	h=To:Subject:From:Message-Id:Date;
	bh=LYhsR47IiUC/eN6utoefdFwi/yLtMUgSJ7DsFMTFpoo=;
	b=A7sW7wHcGZuaY5q98mTfbwqCXTBpADpF3TpEnxDW1B5N9HD4D0SLoN79WlpOq3h2
	YMZiEdyo+cSruhSe5PN3YON+BODY+KWs+1fOE81hSAQPzvuXbTxBhlFVGWUA/HxR4R3
	P3aae31Su4KYCOci/WORrsHziQlhQBWrN5px7vw8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657709812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LYhsR47IiUC/eN6utoefdFwi/yLtMUgSJ7DsFMTFpoo=;
	b=KUKMhNqJyexecKt3I0MA1n2dVYvmuB1V7LgKmi7VmSMi48pDgQGR67GIoK6+zNQL
	QvVxsXJTS/n2GtEiOsFLPJvD1D6gWvRTFzT/nc+y/pLu7bYl/RYA9cmM3Bw4H7iGTaZ
	QMjHLIwFbonV4/K82bGWQfiZWClHl/p1N8jN5v/w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f7345a53-e816eed0-70e4-40d0-942e-5b53b023b47f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21876878b0279dcb7abaec7a318b70bd54680e1bb257d9d6fdd7a25c19a5e8c7
Date: Wed, 13 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657709812
