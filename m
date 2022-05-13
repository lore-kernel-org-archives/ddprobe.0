Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2406E360
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 02:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652410019;
	h=To:Subject:From:Message-Id:Date;
	bh=QX9ltG/atJnpqvJS9NzDwvTmGaxW/+1MEbDXZr8iBYA=;
	b=ICax/GxhI/zFu+gn7J+WiCfEKtyCk5stRj2HdqKu/tx6OU6ZEuCbWeJRBToshGG/
	kqLH6uzaxGz57pQIU0EMnTbinghZH3s1vZIBJbp+KrroTplDVkdpuvw4UuS8ujR+h4n
	LnsssttttLWqlvI1AsiqyEz/ozXL5KLBVGWfdeaA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652410019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QX9ltG/atJnpqvJS9NzDwvTmGaxW/+1MEbDXZr8iBYA=;
	b=VPf+Dqd+kseJNLXRLVjxB0IDWQeFKSwbavvmtBfm83yjAwxLtXjUdEnLxAxl7Euu
	/uoCuZIz1Qd2DQ+3F1br5vUAwNjEaclwlekHIW8ZcF5qx1EltKKWUJ9ldX9dRFWo0R/
	ObTEDNdTl7YxwNAewbuZbganYBPrnHs7+R68X0h0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bb4fedc4-623be444-2a8e-4c11-9031-4f61362874f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d27e5f2995be9d3ccd85df3e8aa4f3d3ed1b0c6b620c406e19036fb08e451c5
Date: Fri, 13 May 2022 02:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652410019
