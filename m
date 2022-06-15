Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3FE7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 09:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655286539;
	h=To:Subject:From:Message-Id:Date;
	bh=rdp+fPPZtHmJQd5bjcPa/C6P7Ph9ck1GfIOzIVeIRoA=;
	b=DJi3k+py1877EXYPcgEFY15ORzJJbEaOjtnMTu46Al7v3vmi0OvWgmIouEue8tq9
	5W88GUwOd27W/nm/OoGbBaqUaV6m4IxwEUWooZ937vQvK8F2GKjJHXk/qQ56Po4xWfm
	fCLITmo1Kq9sbON/T6JkQnJALOC8JTeyPsECN8QY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655286539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rdp+fPPZtHmJQd5bjcPa/C6P7Ph9ck1GfIOzIVeIRoA=;
	b=OYfn1zlTR/AfFqHL2DENNNAl4zk7GytFdfj7yzgcDGvVcb6SJ2Mjn9Aor4jv1BZd
	BuLsoyFNjwK/r0CsE/tY6lqBw6jwNk+EgR1b6/IzkTR1Uk9VgERLcN+RX/ueWzPjinS
	CT60M8VuTaN85Jgs6HwNvoiQg3o3pEF/frvmB0xs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018166c4240c-a692a16b-2a05-4307-95c7-dbf725d10531-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7468f278a1bc888093f61474ec5be4358b791523c5a3363633a5fa2a3cae65be
Date: Wed, 15 Jun 2022 09:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655286539
