Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAEED3663
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647382585;
	h=To:Subject:From:Message-Id:Date;
	bh=WoC/C1xYjngmTF9COfbflorNJfLal4+DJOTlSzRr3R4=;
	b=IdKsXXdBnZ2YELgf80oZLjAhHiaDOv1Cqxsk9rGRGh0RM4rwCA6tfXJuvZg8dWu8
	EAn603fRK/hudk/BM04raGKIZkfdw+Wkq6w5/SkxZCZbNJpto/HBetcoAAWqTScMt4m
	b6NxlY3prGSbhRpC+hTRt5tMHuhKhD2u2xO7opcY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647382584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WoC/C1xYjngmTF9COfbflorNJfLal4+DJOTlSzRr3R4=;
	b=Ua7PmtUEF7UhGZuCEXdBdq4pKVE29KrAZu+fWxn0fU8OK9iLwbITG0ISSLX4WTiI
	ilXVmIB742htD9cKMjCpRS8GCLOv1VtrZXPtJ3fx3gpZh4KtUOq4+OXwdBSsPajHw8C
	2ZajpTGEQnsyjdSUFe4fZgCoORjIKEiwnauFJNF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8fa75e15-b7b6f514-3dd8-4ad4-ac63-d93646e8ea43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e97023b1a35f9742ae532992628e9be55616dacd55cb7e1a397fdeaa0d6bcf5
Date: Tue, 15 Mar 2022 22:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647382584
