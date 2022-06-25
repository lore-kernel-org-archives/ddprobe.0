Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83ED315A7
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 03:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656126412;
	h=To:Subject:From:Message-Id:Date;
	bh=qvMPjAkEtYma5/910ls1+MZzQc21pZG8JETLkcBJg1Q=;
	b=ir0DAxhGMqyXg5sDdy8ZJU+r3lBNU5IHLibRlbWBvHTYJkHYMVBiWcL/3/gCodcp
	ekCD0gt5dZ1DlCGRQlih9x1Fu2o6QjjwREAYe3OwBYe3UceOU8thfBpr3J9koGsoSnU
	xf7NDeSaceodCIFZu+0kn6o8PPiIlh1xdF6VHGZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656126412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qvMPjAkEtYma5/910ls1+MZzQc21pZG8JETLkcBJg1Q=;
	b=U21lJNaNbWaorPKezP3Zj8auuC1VpGk+ykQC6f2JBIJJbTaOTkaKAzo22FeNRFsz
	qSOGeAszI0wUOY3jxRPFJ3P2NvsLGgFPB7i9juxf1K3MylNsjEVmr/qAL77yWRpov02
	bWBoF5ef2/99K06FdF5VgaVmAadAXphwGGBSJPWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018198d39626-f51249a6-19b7-474d-bfa2-e1ea9c7aa0f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4ab3eacf44aef156c62f3c20d77d46a4f393183f99c7ee31673acc844ccdc6b
Date: Sat, 25 Jun 2022 03:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656126412
