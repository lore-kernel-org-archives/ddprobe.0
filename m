Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AC023D2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 11:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653737159;
	h=To:Subject:From:Message-Id:Date;
	bh=cnyDjPi/c0uYh0uEi5ptO5/XU+gzERIMFqbt/hQMujM=;
	b=eCBWirQT/cax3iTBDpKaz64gM/8SD591sZNeFNmwQ3UjZh4O7sZVYgmaBq9QyPKd
	Us5HenORebLMymEu2dxTSfxXButae1fQ+a3i0RxjeZH2zDwoA6zg8dB1+1ru/MrduKz
	qcInVKIC3LvJm1mRkdAZ4nBrBedPvNS0AcL2CKj8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653737159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cnyDjPi/c0uYh0uEi5ptO5/XU+gzERIMFqbt/hQMujM=;
	b=QWeefRiceWNfmFCEkcwVi1Z9JgF6P0ouJAc5Wp4A8lIV/2yZUUUCC/XSNHFwT7hK
	IgVESoUEKBqTcjGujJA8m+YgCUm1UsHSyG98rsgY4HXvNNU1qTIYleHSYRk51Sw0mRe
	0Z+hRpjWP0pp6Mq9B+wMq8EDrRTSSAGNsogBTdSw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810a6a7a88-f381f4f2-38df-460a-b70e-dbfd254105ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa156e932dd6d55a64d8d192daf33d944eab124cea9865b18892283373cf8ac5
Date: Sat, 28 May 2022 11:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653737159
