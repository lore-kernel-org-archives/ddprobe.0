Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202952FAF
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 16:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653929639;
	h=To:Subject:From:Message-Id:Date;
	bh=9I57d1YOydxrTfZWgSx7PbDpzEtL1+rg1Nsk99JpKtQ=;
	b=AgA9uJUxBAC+IJEqr7GNVQs8sarjg1QCN0WgiH51qix0RDbTHal5ziPUk5yY+9Gt
	diL9kZ9Z7dWOu9k62ViT2M4dszqXPxaaN52lWU7qunrCcUrOiG9sauHvHbBloZZDIOP
	DvO/6VoQvJnjsrb8qBPeye5TPmHeDzXhQXnBD2FA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653929639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9I57d1YOydxrTfZWgSx7PbDpzEtL1+rg1Nsk99JpKtQ=;
	b=Ic5XyCdsCYaLA+7FR1S95rBlLNfKwXlbWvYg/V/EZcmg1em/vtXeJEq0DG2lI/vf
	9OOZ2JV7a69gwjBbK8C1BOPiS8h6bAAAW/r5sZVYRoNQsyaZUliwoOM0Agtaquho/gB
	EVu8rivKR/0GZD294O1+ohYRcSuceYgux1lABBeI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018115e37db6-4318a529-c0f1-4381-b1bc-75de693fb187-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1afef33669d45441b2299d597cb0e8b2bb1f40db461a893c54de6c41d637ed89
Date: Mon, 30 May 2022 16:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653929639
