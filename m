Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00EDBECA
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 10:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655116679;
	h=To:Subject:From:Message-Id:Date;
	bh=vvIgweaKSko+/JVSA0paRa/VcZsT8KrU3Ov72lycKlc=;
	b=MGyKk1oBWCSNzWliud0M2gcv1H4MkZjNpCJ/3UBuyovp0ak8QnORs0Lcy04Ie7rq
	oaa9xhIQzFbKGfv6vtY1flX8DOeA7uG1nDVt67m8ses/Ayh1CPYzfZnoB2rEuYsyDaB
	PXUcNlcHjxy9cAPR3rKRKwRElq0gL0HKNxqs/HtQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655116679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vvIgweaKSko+/JVSA0paRa/VcZsT8KrU3Ov72lycKlc=;
	b=SOfDoJNNo69lUJkzhUKufdVO/aHphD2D6ciY5KE4LUbnBtBrOkwcJkf7oUtVk/rs
	M0ND7k+YK9JWfqdXn9Lys9ragFXJWA7/yg3QopICpw7F5eEss8NRWpGjy4JTEQ+3XbW
	2+AHQiB38kI5GjWW2daFFWZkSUr6+T5zGdyRQmps=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815ca4485e-73a91e8f-b817-4bc3-8b03-2c10ad550252-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c32ebd989325e72dcb2c4c010ade392639f83771235f3839999aa82a398e5edb
Date: Mon, 13 Jun 2022 10:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655116679
