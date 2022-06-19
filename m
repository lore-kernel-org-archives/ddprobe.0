Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E8F7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 05:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655615999;
	h=To:Subject:From:Message-Id:Date;
	bh=tCb20BzL2aHB1QHRPYhv1CM07lZh0jkXj/yp1W+JEdQ=;
	b=CL3aEQXiKB+xasHkymqLNCEHqEXjeEh3QO+bPJpyvrBQsYNjFYgcJVdHjRHZs40m
	RqNHYP1bVYAM5vF6miO+X5DNREeeVpBmhL7bcSAuWNLAWTePZi6oPBGSya6gD1tX4Ya
	tNGLMiVxvVwgPc8CnLHG086kKsRDMSiMwd3uofBU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655615999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tCb20BzL2aHB1QHRPYhv1CM07lZh0jkXj/yp1W+JEdQ=;
	b=InQUdkrDhkpqWSwvWb91AsVx0J7xeIxM28j/HpRRM6DRnJIiBUaN9krk8kKhF4K7
	pHR55ZF1da+6eDzTcbSnOFlA0nFBrslI8qkDIbmeQ1QdaP1YIFO6sGYNgGEpc/plMxF
	3dhkm9peQ5K03hCffAKCdUH3jJVLJXMcpsnZhIEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817a674cfd-0be5d773-500b-45b2-88dd-6b7f6f77a635-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e69607dbdcc93d41adf98724c0f0ee86f5169a06207dc6ddf25f280b457c916
Date: Sun, 19 Jun 2022 05:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655615999
