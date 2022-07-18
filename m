Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F141C07
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 12:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658149012;
	h=To:Subject:From:Message-Id:Date;
	bh=Nh1BzPj09DzAuMpMMe9YlGUyo6AnILFOeOoJnIUDRFU=;
	b=kREp3hsfroCW68WtpHFgnpdFGmJkEzs9bvEh46zHvkXdET/+Fh3aA6NDmluqCWST
	8EZobdSTTxz4mnSJO3sKQuk+Iv95ua6v1ScUWZwmTzlwXF/YYc3zzS/D68WOG5PKm2p
	fCd6JTFqii7wrdo3hRQ8ntko6DjtXp8nYSGOAlXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658149012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nh1BzPj09DzAuMpMMe9YlGUyo6AnILFOeOoJnIUDRFU=;
	b=c/lehE248KN6D79qRSw2tmBZHNyhvvwNYTtbNMsXNfKNhwawjbFO6Z4LG+F2FYuP
	amN7GoamsC/qnMiy+4sOI4D50RJSuoUeCKTJKGy1QFtPUgfiop8vyJWDteYesiTcaYY
	QeEYrl5ay95nTMab7+J8klm8s1QYYSEj7DMn1IT0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018211620369-e4ab3ea5-e2a6-4fa9-85a9-28a1766fe8ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5fcf08373ef3b65cc102b475adfd35ca5eeb133dcbe98e2c2461a085bf00cf2
Date: Mon, 18 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658149012
