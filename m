Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834472119
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 10:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653993899;
	h=To:Subject:From:Message-Id:Date;
	bh=/AsEXpHx85CZA8ox5Htl1/Hi/fjR3PxAbZ0Mh6L7POo=;
	b=dJ2TW2APEgFMEUSJjDR4u8ybK6KSbi8bISHYJj5aSj71CfhDFQ4hbdAGnyN2acwX
	eSatMjuAbEs0+Plf27qc/r11Iaw8jhULukop/ujemTyShlrGbyMfSlZPov7dLopHWUJ
	2Gq5d3Yj1FCk7FThEfVFl6GPPKElwExfGEiijwmw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653993899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/AsEXpHx85CZA8ox5Htl1/Hi/fjR3PxAbZ0Mh6L7POo=;
	b=ZZpIFl2jj9W8F8BTXSackWlfzv5troRM5vlN2GXF/yqHSk/wLIqeAYILf4O3EQKG
	pqLXaO2QYAeUN+0xWmRKHRi+OE586OEngFJ9sSKFkzkmndgUTdlfyqOOAvnTyhUW97O
	hrglSUQbtojuJUv6znvkiKbkJiMrE3TROKqMpYHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018119b804f2-e5d1bcaa-2729-4934-95a3-c21e7b6d7c60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16c480e0d1281a64faf663041dfffcd6f139521c24304a314fcf863b33b543f4
Date: Tue, 31 May 2022 10:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653993899
