Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2812B23AA
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656778612;
	h=To:Subject:From:Message-Id:Date;
	bh=NSS5HuoDGQCILK3jD3PJ8+ZHRXD9iWYuZ1aALdW4peY=;
	b=FjCiFc402loBTrPEVqrVPFv3V33w4JEQyukpcP9uhvjbBKnEByoaZh5UZVFdQi8f
	cpxtv+e1JQAuK4rhzDJF8Mj1EJCgyY4ktSGIK9pL8DDTSGPRdFnqxl5Ay5Yydd5UlJA
	x/ugIk0qeeBLSa7Hc6ZrdOU75E5Mt0X8ywP/QqLg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656778612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NSS5HuoDGQCILK3jD3PJ8+ZHRXD9iWYuZ1aALdW4peY=;
	b=kJ4J4EIYWRss7CdqyI0XXv+j7eINofwKi9rV/RHU7NDZF9ECe+wdEk4pBgsrV4Ht
	lagto/rFnYRdCOIelmaXNzruKhsC5J863T77QihHdG38xebJx8ca5NF2xfLnt2nRZzh
	cQnFo6pVjIda6+07hoUCJECUxlFt5uiQ2u1zlz+g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bfb35e6d-dbbeeba2-da11-417c-b597-0c24fff51ef5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05bfd846ec72dae20ead883d328e711e86f573c68386c06e4d4511a031ca8f81
Date: Sat, 2 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656778612
