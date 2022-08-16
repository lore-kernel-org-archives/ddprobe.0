Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1795391
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660665052;
	h=To:Subject:From:Message-Id:Date;
	bh=aWclwexQ3K5GgyPWMZf/mtAlZLGNRXz815cwtexiHDU=;
	b=L9kKaf399a2UsxuACDUe46X1wMaNndNAeyYIqTWuPxQDDYe+WJ07kFb5fGaVxkXq
	t/dgLSiMv3fD4EjAhlTYFR7itkZWhciO5LzpOeoMZmGYQ98n6nCjyU4t37UkvBIu4f3
	A60LJDNd1RKF66z3NN2ukGATKpNDYkK0H+KhbQV0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660665052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aWclwexQ3K5GgyPWMZf/mtAlZLGNRXz815cwtexiHDU=;
	b=MMq14pRMYsj61fNecPXkXTmg+sBdEMvY1n86/Kj4pcPv9EE3pFG9cyzrP/UPpwUl
	H9tUjQsq/EYzB28cJ5JveSxfCQtVNCfkxu1PqZibDsh4xbJBAKuez0il9cneNPSuEd2
	ns1q2dOdCjH3u6HhnDFeH8fzW5/6GoexDV+hdvkU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a759be2a-bec2a48f-e194-40f8-811b-36de51f5896c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c021d6d7a398e280f6be4faaeaf713c0e3e1de88e47cf4a8d61d744f5897ebe
Date: Tue, 16 Aug 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660665052
