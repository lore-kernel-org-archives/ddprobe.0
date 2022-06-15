Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD217A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 08:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655282819;
	h=To:Subject:From:Message-Id:Date;
	bh=GkecS12LZE10wHJkLfteXVNSJZjvZM2SSenS7/HKym8=;
	b=MUVZz6NS2QPV0u8uOIfmQSFr9w+ZmsPq7qM40O13QF/RfjOqp8RClroC3e1RxDDp
	1NJ1ctVTjutX5LU9JgoZsaUiEiVAuYFglGcg9vkJreTkI9tZStTeVceCla3cZ3vYTvG
	26e4eaZ5+3yS58MdKkQDJPHpvBNJ9MtdJ21+FgB4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655282819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GkecS12LZE10wHJkLfteXVNSJZjvZM2SSenS7/HKym8=;
	b=A/F+GethoRcXEwjLPlTMI1+TcDBPuPqggkljLiob89voNKC+9J/d/0jFtvpJLodm
	LmlCplfoDapg8gL0/flFq+8f2G/DwxLChdy61TNOd/3o0azPO4QUQR28xFSqVssuCGm
	iDYv5hteN6GVu2KSb8+anbdIrF+zcAjl0Kyb9Wrs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181668b60c1-462873d2-79f2-4f14-a600-09f1865b2291-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e29a5f82a8be11a4015a95c7bd0d2bf27ce39c328fe62cbb41cea62379fd89f
Date: Wed, 15 Jun 2022 08:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655282819
