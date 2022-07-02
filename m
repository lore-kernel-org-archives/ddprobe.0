Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183BB1FA8
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656795412;
	h=To:Subject:From:Message-Id:Date;
	bh=RCu/uPdM9G2obvgij2xfd+VQ3xuAcskbhctr9kthG/Y=;
	b=LXijPYlwcLKrgh4/9UJQMeDw0Nk0F2Q+SeVQCtRmmJZG9kA9MmImiV5XTQ9VWNrm
	pBH4qGb8GQ24jcEBQUa1csyl+Jmo7lYpp4Jd5SyXUNSyqSRRk/offoOtA1KvuSB7igi
	0lBfN+wgtGJGc/iP/mRu1inllTzuiyNHmRfFfUbE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656795412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RCu/uPdM9G2obvgij2xfd+VQ3xuAcskbhctr9kthG/Y=;
	b=GohI9RKYJkH+v10vrOaR9EpsE8NJNnJ1K/QlRhTnFpykAhSmS1PehVSsGDw3qiWy
	0qODXcDYRKUXqz5IzPIvbn2JhzsB0lAryEF+UUvyrKF+aLAH9HOYrX+ilNSYdZpxpVg
	moKx+nmVuPpA4t71at4ypvb0miEIRbKqsVJuk9Bk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c0b3b77d-453bdc7a-8bcf-4813-a72d-a01abb415709-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 405621e82ed09ad52b4f6be366682ca5ceb094e94bf441a729219e5cbf34306a
Date: Sat, 2 Jul 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656795412
