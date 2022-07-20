Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11133747E
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 22:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658354812;
	h=To:Subject:From:Message-Id:Date;
	bh=6Kgn/sWm3Gqr7p/NSxOZ5kOR+/n7Ct6T741jalBGs38=;
	b=kRC1DKQFuj4Rkh++yAp68p1mTZLzY7rTGQIZ7bsqO56n2ZNtSSvJcuOAzzdc+t5f
	TT6I465WkQsQULOb0iqXX/S4IqLOecITfq4D7xTAC917FtOXDZb/HxHyPoYHdXDuGpf
	QKA4NmVpYWKLxfBCTB6qzJIaKr2fDN4xF5/4OsDM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658354812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Kgn/sWm3Gqr7p/NSxOZ5kOR+/n7Ct6T741jalBGs38=;
	b=fyHBEVkHIawX1UVtVtQo4Koq5bpSqrlga5WENrR1CWJ7l9398tql+nU59YHykNY1
	wTqcztpfRNmfgNDyi2cA3GaWEFbFhFAvxzkvhxR0uW7bL8/1MNiGX3XLz9G3OhmDBJi
	5Sy2n+x0a71IdIS24L1aOrpCMiMR8d5OVmZgA+NQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821da64568-5743fc05-3daa-4a43-a12c-e5837bd6ee69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63a59c738f0068b8474af414c75e06c6c89d72dfd270ced3e50c9b83d9d1c41b
Date: Wed, 20 Jul 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658354812
