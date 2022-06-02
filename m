Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C4D7E3
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 22:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654210259;
	h=To:Subject:From:Message-Id:Date;
	bh=v8iUrxskFjpab3be3VBOPZxVvW/PsHI8HGD0/I04VN4=;
	b=Hc8936uwyiqbkb0p3zwE2cb4p4AEAOiedCFoyRvwAgHvuKTUNmkn+xCumuI8umuA
	pCcmzGyG49zwOGaxfjxnWjpWK1IKEowZqmYZZp2o+j9X0QC+dkaEoDiRBfo9d4gI1B2
	BtEDIeDOatr8PQwyi8vds4L71YxTrvn7TrFF/+OU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654210259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v8iUrxskFjpab3be3VBOPZxVvW/PsHI8HGD0/I04VN4=;
	b=fv6a+0p73tHiePMMo/2zjnMWfqyV/bvNN7T8eFPKWmy8pq8e55xESnLdPMUsIKSv
	yZfKKr0wGkbdxla3s1liB6vFZdkq79R7rRfNGNxVi/nwzzHTcLyYlNI4IplTgQq7TVL
	DOyyK/Av0UFTiXhzGMr8UFA2uzWaJyTTyqUfTpRE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181269d6938-1a06f4bb-18cd-4fe8-b48c-5623d4742ba2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ccfaf78c3a6ed17f9e0dba9a68f1802f721f83c9e8dd0d1fa399bed369a9049
Date: Thu, 2 Jun 2022 22:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654210259
