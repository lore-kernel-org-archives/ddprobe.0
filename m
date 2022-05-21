Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5537E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 23:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653174539;
	h=To:Subject:From:Message-Id:Date;
	bh=qGZGgqHkkRyc5T5kg7E7QOOZZ3TB2h4dnSQinQr0U58=;
	b=BzFhzldDVu/og40iF2EGIijgL9pp/uyf44hWwFYZSNmqp0IFP468bjNct8wjsU7j
	4U6HpqI3C83jpgBuNJ7iPqWWTq4dRTQWBy5/HulsisU1Fe2FEdxPQjTIWKTWU9NdWoV
	S518dhUccWdlJdCi6fZC3PspNVlhNzT7396avO80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653174539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qGZGgqHkkRyc5T5kg7E7QOOZZ3TB2h4dnSQinQr0U58=;
	b=RHci31OCb7OjtzVi7+YAmS6vIWFwM7I+j26MVmqSXbcf0mxTrGsFlSel/45u+XL7
	ugGny4X4YgnzSWxvijcpqYjogQ8RPUjvR4OfvfieoYtQn3vBAJVILdjvZZ4EoIQM0p1
	TIAfhMA9IJbYis2ycsL1tMHwBNHIYqKEPjWHMs0Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e8e19408-5b6a8495-ef9e-4bd2-9d78-729191884389-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1d1418ddd237fd161c719bb665f463bc1550c46f98a84bfe3d243bdde4640e5
Date: Sat, 21 May 2022 23:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653174539
