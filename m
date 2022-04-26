Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547CE363
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 02:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650941758;
	h=To:Subject:From:Message-Id:Date;
	bh=VLD4Ks6DWcoA9oxlsQANBXyfJG/1Cj8QYxptvZtawAY=;
	b=gaz1FTbW/3Dony2lJ2Ifgr3YzFghv/Cx+J36ksF39bKcTqSsHmRrw53dWkPfVN3o
	8sIzUgHM6ImI+uD9EtVlf0k9rx6Pkn28X0k9lVncAmZqj6QV+/jA5bshR4W/79JzZbz
	qOGZ26NM8j7M2hZSBs3YHskbHma9l82s19at1CKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650941758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VLD4Ks6DWcoA9oxlsQANBXyfJG/1Cj8QYxptvZtawAY=;
	b=Z8zOcC68pLzqXEmIeR3UJc8NaAfy7fcia4tXQGalNAqpf6PRyQy7BLLtAH919VYq
	Dcx26q6XXUTIms01Ms8VQ37SDZ4bJPXw1Ng9dOiSUsIBfuD6t5NIGZAeo3/xCDNmzN6
	tI5Sk9TQFXhtT/PY0FMhX5NZ8jBg0cZ4fUVjP6bA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018063cc0b86-2f05c3ef-e580-4b56-9a22-8ba86cb565db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe6f16649e50a96beb3f690a0793d116ddcd3247f97ee8a2fc06e519962c17a1
Date: Tue, 26 Apr 2022 02:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650941758
