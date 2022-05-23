Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339142F27
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 17:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653325319;
	h=To:Subject:From:Message-Id:Date;
	bh=qqkXMuqHcHM0J7p48aXIA9PoiuBAaiwUS7pDtKSvcyA=;
	b=JmF27iVtPWTuVhMMIvgwpr2bstb4CSlrdLcj0BLgYZdd9LhXhyS3hwnR3lYw7IJn
	fYnpzz2P/UwD/hOw3cj5/ZgFo8AirGI0y2ImaNEgIEXuhAR/w2sh9/fekDVxEp/t4Y/
	Avdw7TFWkqWLlF4sJcCIaxKgE6SdTp5NsnDtuIF8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653325319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qqkXMuqHcHM0J7p48aXIA9PoiuBAaiwUS7pDtKSvcyA=;
	b=R2ykFP1QkiFQ+HHQosjW52ZHdmAJ57vZa0gGBb9qAmY79SCeUk2wf6xVyMRH0FCx
	G+J6N/K6p6VEIwBKlLEPIYNPYWBydtP7WM7rzF9ahYEkJwPwcLzc9i5U8nJwz3fnw5l
	WcrEfqBRGXBbjILCGOVjzR22C4i1RZIPv+BuF49M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f1de4cb1-4c7bf129-8a91-4dd5-af1f-cfe19f8ae8ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3eccafd53c2675b115caff7c9bed641d42baa783256387d61b2af69edf8a38e9
Date: Mon, 23 May 2022 17:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653325319
