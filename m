Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACFED3FF1
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659217253;
	h=To:Subject:From:Message-Id:Date;
	bh=S7IdFRA6XOZieHPsIb7kojM0cIEMiA5ckzQ7GKqinmw=;
	b=Q+sqaoRQI/VMOqDSE5LKHk6XLTSfXenAIO0GCLZhMCwzUSnv1f29Vq65uxUNs8xL
	Y902jrQoxKartbJLV3zr38q95eZZiPnpe65PTx0KqA7Eo28Uvs9UKlex4IMcib51OcQ
	lxGqspNj6lpqruHtkTOobqAZrSZBtoiVJaLK5PP8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659217253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S7IdFRA6XOZieHPsIb7kojM0cIEMiA5ckzQ7GKqinmw=;
	b=BunLFNU682Db2j1/ITUe08gC/CqT64vK0H3oudPfwbkisRIWa5Jhxc8ju/BtHLIW
	jCxaJ7eA0IC2soCMKKZnveKFwAc8KRVVa2tNMZYoD0/qzDkqX5bQPxW41Q4L8NCKthp
	yCnBWr/Z/tgYNHQArQk+FHIrjvtgf+0HKQ/Shuno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182510e10d7-dccbf93d-b226-4ecf-8ae7-ea1301926c90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0284074c7558aa7fe2f832065e62422e3384859f75ce2df10b353ed6fb1f9a23
Date: Sat, 30 Jul 2022 21:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659217252
