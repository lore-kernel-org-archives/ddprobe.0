Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A3B7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659405652;
	h=To:Subject:From:Message-Id:Date;
	bh=/KBsUM8gOIzDEXV+ijAkJD60+mfVXjk6MbHKPGJNZFc=;
	b=G6JUNmoB1WezWazI7VCBYJZLBdbFiSpj5L6X47JmTem9xy7lYpmIoeyABPF0V0UL
	ge+Er/fciZzyX832BIGo9SrLHaKErn+aMf7pKJX1Cz/msoH6q6Gp3QWrplA4/xtOREM
	v+hKkrG0Qs9nXJf3EcCUcdC5z50O29bmSM32+BMc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659405652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/KBsUM8gOIzDEXV+ijAkJD60+mfVXjk6MbHKPGJNZFc=;
	b=U5Q764U2ViA/F1KKzZBh95LD1p9Egns/loVUU9SU0WMWA/6zWeCDyG18Z4mAFT5q
	bqQ0ki6u/w1IyGXMQ7pRhZIoz/PekNjrXcQGOOhrAskOlskJtEKuGqXF90h9yJ0GWT9
	ruWzW1uMg262rX9cZzf1iRZ2ClV0YxnXfGPcZ12A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825c48d24a-03097bc0-284d-4253-9542-d36c484e1a29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 590b72508c05f7a15cca1aecf0b393c5890fa1da20775885256a897a0f6ec89c
Date: Tue, 2 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659405652
