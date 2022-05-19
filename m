Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EF01FAA
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 01:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652924519;
	h=To:Subject:From:Message-Id:Date;
	bh=7Jv32ZrLbpvweKhrcbM/FowdZEqQ0UllzhsAzQqNIAw=;
	b=ieEk5p0/qKe6B4rCn4rFxBEYo6liJjOCYJjqkT/Kk7Mc0bxNVHWysby6T9MLkSJg
	2YVry8qx2qUP0/2vHv1TQAcWauYmdbNWc9BU2lWNTr6SrLXBXENIdr/9TZf2YaGZ6k4
	6gD1VA+AUyfVYcHY4s/iUcnUcbW34p/yG+C7SH8o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652924519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Jv32ZrLbpvweKhrcbM/FowdZEqQ0UllzhsAzQqNIAw=;
	b=fso0WPnsLROrUpDVloYyXyY5ECg8EavJZeGFZrU82Kdn2ummN8Axyk1P8sfdUMnS
	EHcnyvbCIL0fAO3Lu6Nf8TzRwbwBzi5HFS8C+qbeVm5w2qXDNVh4CLj9XdTR1TSUvi3
	yS5vgdtQfZDDrPD+ge/iLlQxpqdR5r3F3D4iT/OU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d9fa937b-2311bb33-3305-4edd-bc40-c59727e0b99f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2db60360eec54854df57674c9140e6436643b1ce5699603f93780812a82bca6
Date: Thu, 19 May 2022 01:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652924519
