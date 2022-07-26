Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D835601C
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658862653;
	h=To:Subject:From:Message-Id:Date;
	bh=1G+9kMaAmBXxaLGkv9A04ax5VPv3s44MpOB2T6jGOAc=;
	b=HuYUF0BpR0rClST8hAbzPxQ/VyqzpH/kOOf+1elTwMu8EZnR3S2VXi7klviTEp+T
	eUxLYmGQTf2/AYH+Gi9Wz/6eGpcIBmfGdjGEJU7eAfK8053/4ren/Zi6va/izF6n3G0
	c3EruKFfeR3LZL7Jx+kFmZwoIqzZwsjO8KeP5ZDk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658862653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1G+9kMaAmBXxaLGkv9A04ax5VPv3s44MpOB2T6jGOAc=;
	b=PYFdhrkO2HslQ6As+LaW55gG19+Qd8GmW3zrkDe2TjwYKDbf01zSY+uc2RQ/A/FH
	1UPb2WHNil+fqzzIbws5BqnLDArmYn3twws5cZt3UQGUpnQ/09/Pftti3FEusDGE0G3
	P80CjOdslg2WCp/pcqwkLBfeft9drVzyLKfUNZxg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823beb4cbd-322d067d-d4fe-44a6-b08a-90193e3f4603-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d24b0d37c5f1334a4582c143b93e85778881da9a83b668f0b6c45f7954ffd703
Date: Tue, 26 Jul 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658862652
