Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E531C26
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 22:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655938499;
	h=To:Subject:From:Message-Id:Date;
	bh=tABDXlfZX4/Hz1yWwb5TExY5GMGPcF7IgXZJQbjO2mI=;
	b=cOi3tnjS335e11zToMUkHw6A9fKytjDYAOGHYC+sSXdRsJJdAhChiIvgaMPfW3F+
	0S07aUJwr/ChpssPp1eUdeuGbP179hu82TGcLO9raSJo0ldzhXFN8zPVyIFU6nS8732
	fgR7b7QqSVySGAHJu2h562msFgYM4oC6ZA9k6mlo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655938499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tABDXlfZX4/Hz1yWwb5TExY5GMGPcF7IgXZJQbjO2mI=;
	b=Eum1/OtjXJLSf/t0jfVw5MadbgXLhPNAuXOnAnlHm9/gWvdGIaq20bJKn6mo1pe/
	YhXE0flV+m+3z7B6ehO+4CXz5APZMkmTTyWZXWXOKW4oG8KdFz5uG+74VdnhHNOYpGj
	IRZgJxyyGVxH8EZzz0f+a+NsGhRbKb9UBPffE1CI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818da04312-b24dcdab-b0e8-423f-a8d2-1c923bedbdb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6a6d6da874994b08f6faff15ae829f2648fd3ebd968e7f9f372ca52d0674d92
Date: Wed, 22 Jun 2022 22:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655938499
