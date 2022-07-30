Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78ED2257E
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659178252;
	h=To:Subject:From:Message-Id:Date;
	bh=C7wHJBF1wCaZJnv5rSYzkfatYYlKp9nSuU6FeIMABkw=;
	b=lEYJ3//MjYn0eXj8cInvTS4gsJ0E59nz5eeOAhDaM/HgZ/BftzvWxqnU2FSDIDZJ
	X+xt4GmCJGzoVmi1crDTf/s1N4Gf0BkQY3RseN/ocCo7/uYLUQraUzMecdk4CQWiz94
	MRrlDm1ICZvI9dv1+j0oErd3EC1ubZ7Wlt4vU2lM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659178252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C7wHJBF1wCaZJnv5rSYzkfatYYlKp9nSuU6FeIMABkw=;
	b=QBfMxqsOmqYT2KcQa5SW58dQE5KkxJwboZIDKZn0zoNS8BDiwcQujfl1dwBjuEw0
	FiK3xKROzgHrnPG9RG2snko4XMArHzUthloUPo6A/zqU9SdnwUzg1uYoucB+vq6r8/k
	vsSi16y98lxorvj7dLVFnJxAfBhqKGWl2Zs0oSmM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824ebaf8f7-f49c274c-bc34-4aa5-9179-2ee55ec5e0de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31aa47a78b6a754a7a47427568553de4a829cdf78d4562d65c5fc2aeb3c7ae68
Date: Sat, 30 Jul 2022 10:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659178252
