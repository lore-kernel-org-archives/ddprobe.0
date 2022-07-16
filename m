Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C386136C
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 20:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658004412;
	h=To:Subject:From:Message-Id:Date;
	bh=sZ/D26pHCU2HhxrAH4AOa9VZcyxuuHbTQcrhhJ9uhhA=;
	b=Al2HOrVWcMkTf7zdHkjQ4RP1Bql/lrwh8mfmNT29PDM9PmMSeSLd3mht52uoBUwe
	NitXty9/2s4GzrXyALVxeGe7Na51lHeVi+rqRda0lzP4qxBJU7Wc7eYpPelGD57kOhx
	Do3n57LgRNIj/b/RvWYuI3hkPU9MuyDqiHyYwqsM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658004412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sZ/D26pHCU2HhxrAH4AOa9VZcyxuuHbTQcrhhJ9uhhA=;
	b=Nj0sJcd5XsowKCSQb5xFBWH7wcMDXEVQ7ws1I9tfHcmbczYavktcUFnIZ+Ko1pTZ
	S5XEUluaVK5txmTa17c+0nF4aAbRQ7RJx1XhNgazzVwUOGqnTdeVleYtHvtgzFFoQ4g
	V0x4JwBFnssmh8yQFwppJpFgaU8D8LYbRXRWZyeo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018208c397a5-638e1808-30d5-4c1a-9977-9fe59c55907c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d93a05c1067344d948af36352e88da25c163a47884aa271b8d487473ceec10a8
Date: Sat, 16 Jul 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658004412
