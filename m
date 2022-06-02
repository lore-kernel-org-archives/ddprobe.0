Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9167F5
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 09:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654160819;
	h=To:Subject:From:Message-Id:Date;
	bh=wbgwzzSkq+/eNHf0d/n8J1Yp51D3mtaBAgqcbEohmvk=;
	b=c9LghZBOwb8F3hZynMyS+xG7vMzgVVr1tGlo08GdDYsgFS5XLnRR9jP8+/z2Iv3p
	Sv/i1y2JUMRqHHhZWkaLiJiUWwF2Sb7f4bCyEdnnOaeilbWmFmQiPMsKygCUe2DPpc1
	Q1iZLggqWZr9noRpS518MCt1Gymh9tkW58D99b8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654160819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wbgwzzSkq+/eNHf0d/n8J1Yp51D3mtaBAgqcbEohmvk=;
	b=EX5MU1LQ5fZUQXYpiicgcezwsSAREGSnuk7tmvmBP5ibUIFdywifw3sfU6XhaiWb
	RTOqUL5VhOn44GiMLgMvqqiDCP7rbeIcnRu1YNw3Cq3Vqg+/4lQOk5J9/VBvf2pLL2Z
	xXE3aIe9pI1U0jVm/1Dk+ijERsn8e8cwzlo+3Sl4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018123ab0458-7e20042f-c760-432d-bf00-e2a9464cb856-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e98cfc5b0d7cc9632c49dd56f42c727ff2b4d997deff01166fa2263a82081a8
Date: Thu, 2 Jun 2022 09:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654160819
