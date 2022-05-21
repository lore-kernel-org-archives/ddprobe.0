Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B6D17FC
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 09:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653125579;
	h=To:Subject:From:Message-Id:Date;
	bh=itg7/08v12fkKv568eX8I1PxDIxUksb2AEoVwyqjDuw=;
	b=Q1mnWSdP1OLFaGVKRACZHNVtua/cCB8EfMybCTMMt8VXcWMQxhClCUQkaWu9BXST
	0JuxHQrJaoDBKvmN1kFW2KguLEMn9mbSbqZHy+LRCwamW1IEG+mSzQRuls+zKZ1iFi/
	QmocrN5kSkr0hD2zCqKZTbKuFBcaoe4MMaTdvUR0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653125579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=itg7/08v12fkKv568eX8I1PxDIxUksb2AEoVwyqjDuw=;
	b=hLe6bFdFQGZK8ox0OI9V8bJrUnMmE+YC2fIqDjnCpSFkYH8ZX4+VZljD/7+GIdgx
	0gqsaKKWZjxDA0ptkja3hAyZ7uXNjZIRhmBhaqxMdHvGqZp4ezACO6J/+/hM0u/U8pM
	g4qLEpnSY5mvE4EfAd5Y9ofMJui+L90yUQD/pggc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e5f68216-d9b3e1ea-78ca-4081-a94b-2525418f48a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21e7e8dc29669b44cc0dbc4011461f60a7d852865b71b830c247cd4ec068c656
Date: Sat, 21 May 2022 09:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653125579
