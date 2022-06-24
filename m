Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1499623B5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 07:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656054412;
	h=To:Subject:From:Message-Id:Date;
	bh=MgznW8vtE/tsHSk3VI6UfengnmRNeUDEQM7SMc2tsik=;
	b=iYAGfqqIXz9TCqztg2j6HJ73EsbWDJuwtRGrpRseGcjw6Ig6IVxpZF79hZuG4c+E
	2N6f+aKHqTg3i187KDper+DYb0kFFZL2GfZGYtuh6SumBrV+GbotIAPMM2wAt/JjupF
	aAjNf/dnxUH7fNw8ykzoBAM8gY8iZkxb6N53LUv0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656054412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MgznW8vtE/tsHSk3VI6UfengnmRNeUDEQM7SMc2tsik=;
	b=Id+UL3lQrka9Wf95Hy9Mki0rwjN4ET2+lP1YlFvZn0EXGHTUL59Vyub420Ov8ses
	QNjGKnHDDTxnbahRIjXcuQrQx71oJJ9kMzazOJuH/DpOU29EfPGBxOWLC1Fe+SgdY6Q
	eZDVI+ufVjR3BpmiBmZnP3AOWj8wlDQmxQfx6txg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819488f456-0634a692-bd6c-4fee-86cd-6aa5a1be6329-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3ccf4153116df3bf4e872a217d5e54a41052640a75941b77adc3cd6c5f2fc4a
Date: Fri, 24 Jun 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656054412
