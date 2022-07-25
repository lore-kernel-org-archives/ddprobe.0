Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E1363B
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 11:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658747212;
	h=To:Subject:From:Message-Id:Date;
	bh=2usNqOz6NFrncNfLps3WgkVNK5XkdRfyRTj7eW1zFho=;
	b=GRHTUJEPWjF71YoMPSHW4viu2p8SOpaNLp+9kY7zSnUZ/LSW01iSlJ3JEmmE5INW
	5/1shmA+IbfPbtPAJtKNqC2RNGqgOK5zO6wVmPuq4ZtVe4N78GTFLFzkYcvbB0HBByS
	CFpaMCQEtw7cL1Gg8zWW3ijt3L8/FzaIpqeNen98=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658747212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2usNqOz6NFrncNfLps3WgkVNK5XkdRfyRTj7eW1zFho=;
	b=fD5LZ/k39PI68QQUa/Qcsj6aHpiWm1tUe3c//1tiSzUW1fS8di0EOny/gd4/ymbW
	2fIakApzvdBBTGT5Yb6EZ+3jzxMHXtvOVmt+YGeH3ay+Ink9vXYqjyWcs+PMYwqIgNa
	mRtaMh+/ciE3MxjWN+JYht1jv/vLi41A35/n2qA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823509d203-ec4ee7bf-cf02-40b6-a756-05a8d4e01b56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 678fe7e120973492e1a2a171a7cc6f88fa76f5f413258cd7ab72d0e36ed79bff
Date: Mon, 25 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658747212
