Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488D42F25
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 21:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652562419;
	h=To:Subject:From:Message-Id:Date;
	bh=lQgxtLDEWMGZJaUzZoadKhrlP20FK/Wmb6FEpsN/RFM=;
	b=e+2SsYy5WfI67/seTk1W43haJpO1SFlymrErf8WQhb83cOvWiPwx7eISev9/N+KY
	A3Vy3Y02fiL1/kr6k0Z1T5e305kQyNFStriduG67w7dYtDtTnA7PqShkElklmQ69mmr
	0RCIyGoTO1uzg8jWKcYsOvN1Zkun97vNXrTotrqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652562419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lQgxtLDEWMGZJaUzZoadKhrlP20FK/Wmb6FEpsN/RFM=;
	b=G7d5RZER6gLllAEcaLi+N4Iw+DMag9G2dVTMXJUyHL0hWXW9XFzXJ8Q2IRNDtJFT
	DxqKJzcrMRZsniCDce+km3zPrvDckHND5oHXrz2ojzESa4zs6KM/ARz6IsQTyFeENwT
	UuoGZSZLsPQo4o2VkfJt0QrMc/X2D7Lb7Rg6Lou4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c4655ecb-1fb785f1-df07-4ac5-9e9d-b56fc3314f8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d41996b3a3222c1700b68a32204855a0ad00891c40e59e6c0d2e4309306d31c
Date: Sat, 14 May 2022 21:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652562419
