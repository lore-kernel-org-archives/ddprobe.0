Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253C22596
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 19:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652557019;
	h=To:Subject:From:Message-Id:Date;
	bh=eMzpBEnW8BrP8RBPXX6auyWzo+pRR6fubH3+Z3GaJkk=;
	b=LJaFVx5pLi8FDAXSPF9UcIe+uehmd9RIwrH3k+FbEu1bBXrVddG4xM8pguhEMpXC
	HxGbvRShCltiVC5TfI9ex/Qi3g25t9ured0Go66TAaK9jgeTsRi5ejFoWEO9NDETMDZ
	fOdeS6lUvJxXVnGVIGl9pHtU1RK+DSdkVXJIjxb0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652557019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eMzpBEnW8BrP8RBPXX6auyWzo+pRR6fubH3+Z3GaJkk=;
	b=EDttglIqEij2xaDigNjRPWE5osMEd36Zykp2mppoPk4NA6Un4KvVi1DI/9Fmxys7
	osvXcOG0dRITe/x3fhgCVT7PlIwldCudZ1qQFNRB6aIkQgS+hB4GoxmLod+0XQMQatP
	8/GiLnnR/BUAMJQlryAW5Lriq7e5FvO9aIYUDMGQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c412f8ce-a2413186-721c-460c-a6ad-34fbf3731717-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d1cb0c137070ab9a86725e4d93b03b71d2edf14bbf4e47e8e111358d5c97bf8
Date: Sat, 14 May 2022 19:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652557019
