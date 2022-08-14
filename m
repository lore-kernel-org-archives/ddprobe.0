Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDF5623
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660435252;
	h=To:Subject:From:Message-Id:Date;
	bh=Gqx86q/d89rw7uCOVwxROaOweIYbcBkY0607ZFDRZvw=;
	b=ewQNXJ0I1jyd3ddTzRGjfA8EalUnjS1BRVUN4hdECjhd4ZJQpF9gZv1apbeO69Sj
	wU2mNX+7hVUBTJ0zBzITgsGWzcMqPL2CbrVIteBUZYO3sBtHUDOTNPIaFCule3idMwd
	w20UT4aNF/ncLMKshPdQOBroXVRNeJ5wuMFALQ28=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660435252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gqx86q/d89rw7uCOVwxROaOweIYbcBkY0607ZFDRZvw=;
	b=iABQ5IUvsXdX/1/FOgJeR/FIoaormhm73VQ7Nzr5NIwiahO1gWI8pmt9Yx2jxeGf
	CK0y7Tr03P7j8rMNL/QYOuXj7kvdY3w5uNCQ8kQn8uaRsE5Lxg8P8n/lBYax/WNuTj6
	r1VAiGG3HbxmDBfoIPGKrowYh++nBmS4XzyvMPGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018299a7455d-46e91f0b-e59d-4612-aec4-521b23dbb889-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efcdd408571a395c0564afc6379e5f63716ebec73b1c850d236f7dea68dfa8fb
Date: Sun, 14 Aug 2022 00:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660435252
