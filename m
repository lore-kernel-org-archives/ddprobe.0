Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F044681
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 17:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657648012;
	h=To:Subject:From:Message-Id:Date;
	bh=s3iKeHKzXYqsix9aGi8WSMYlNtuHgOFxIgIxgzi2whk=;
	b=aRzIqeg9EyMtTPvnXLKBf561HaGV1HqMGa9nm6A+WH63gtSKFOYd32dxDN8E6FrC
	9qKxErlmjQ8nybYvMXIzLof9SeZLH+pBQQx7+kjBCFcYzeSihsrG+8u8lZnz1/eJ7xG
	zn2tmO3JmutTvrZCZq9KyirFqms4mjNAi3NHugDM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657648012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s3iKeHKzXYqsix9aGi8WSMYlNtuHgOFxIgIxgzi2whk=;
	b=OpklvyRf8Jnspxt8fLQYLeoyYQoUrv4mZFssi5wvRnBMnEEOgH5Vsf5BpU6/1cGZ
	6CgoJrlsL0XkAfwaN7d+f24KuvRQ1sBFIdiOYD/4b1kvi1WpAgwjkP0GCjwM+33muc1
	ZC0rCZggBab3CAWKJiRPO3+iT0864fdlPFKaGADs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f3855c43-bbdcf726-57fe-4249-8783-d41424a425af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4086b7730d0d9c4e571defa5fb500fd9fa099fbb03d8f0a09c5faf335d75336
Date: Tue, 12 Jul 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657648012
