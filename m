Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB95C7FE
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 06:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653460379;
	h=To:Subject:From:Message-Id:Date;
	bh=W2eagv21HhdNA0iasbkjOTmC+gU3vdzanj2RxXD6EGA=;
	b=eh/eKWrrCTQycTGfCj3cg5UbVykjL9cEcX8Fx+am0G+u0WVcZ6JBSUAZN+2f1Z5j
	WpfzXif39vD9EHYmOAEym4dhKsqxsPP2DSAs/PYkrMb/+zA/lT4PO6DYqfRFQNKYuFW
	1BE64Aoeic4itzXvq5UEWhN0P3GZyuCf/XKgk99s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653460379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W2eagv21HhdNA0iasbkjOTmC+gU3vdzanj2RxXD6EGA=;
	b=E0QaGdUYplpo0LoVJ0B+WJm17aPBnnr9iC2n+Bd8v1eLUKyNmT/+Lx3zbdyk2ijz
	w+HnKdkfcIjDrK0o9OGQNhIkLYNQWkzXu3j0kek9LMc2jwwwGX6m/CQRrjm4zzMaXrP
	vTLnYfoeIchZXumkMZDWvsXV54nf4ZRtgF+OqAhg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f9eb265f-54c79289-8097-4902-aee9-9300f0f5f3b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5583002df49f563546cdb0ab6e2161b096c40b381aa583cd6e139f1cd5074570
Date: Wed, 25 May 2022 06:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653460379
