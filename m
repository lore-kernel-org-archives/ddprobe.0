Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5E587E9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 00:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656550013;
	h=To:Subject:From:Message-Id:Date;
	bh=+15pMPaInBXVzDh6nFt7fRFQItzjUe9797e83eVfyCA=;
	b=fMEbYRFD2H5zJJJ2ysxcUH+N4kaFZGe5OQ7tItwh0lpH34qEtO63qCl3tEyZrQOL
	zJtysSj/E1ilzOpIbhhWWQbRvz98MY5Fb7KUrWpcROEelCqfK/YUq6yvTFFJ2XSuD2e
	ZXFFluV4FxKB/Nun14RVODwvx21Q4wK0Z9f+WPoM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656550013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+15pMPaInBXVzDh6nFt7fRFQItzjUe9797e83eVfyCA=;
	b=Ecjam36c/EO6FcQnxjif6u++w4ec5qbPb2Kl4Sznvl5c4n1m5z4utbFr7oqAToel
	A1gNltlumYLcGkEfUNuPuuAi2kYNhv9NJu+G35FFk/9k6X30uqOGV71NdYEumPRs9YX
	5rxgewA0De4OX4kE0K1lJtB6XuRmGHCWRrSArLfE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b21335a6-d6ca627b-de93-4e48-a38e-c915e9c10644-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e867bc4ade6b55e2403ecd9d9cab8c4d67c6de2caec21345a5e7a568809759dd
Date: Thu, 30 Jun 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656550012
