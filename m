Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61B47A
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 07:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653807719;
	h=To:Subject:From:Message-Id:Date;
	bh=xEXro0HBBoLM5fmGXdWsx+YFSPpHjttxc2f1m+oD4hY=;
	b=G8vdkHrRRKoTyrJXdN8nOUfsncDxqi2M5nSdtQAODSepWP7OSbJut8AqrYF1ipDm
	P3Qtdh0qQhWNVCzX0519J/i4AuW6cCB/t6QmUoK2XjzZoYGEJ9KMCutzIfSeXk6BGqK
	LdWet9oMMlyKAhTCBzoCg4L+BJszYF9RoUNfPnPc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653807719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xEXro0HBBoLM5fmGXdWsx+YFSPpHjttxc2f1m+oD4hY=;
	b=YymDp6nyXJZ2xW6T6KMy5cDsn0gv656piE2sDg0c77n7/rrssOGxkBF4aSmYxv9t
	DdaPi5ZfvAqjNf8RSWXaKs0EmEO792IaG3kRoMRDy4XfKwmkul8c9PZTEw1W+oJWgY/
	3LuIDnp1M58gsDW56CD2t31+GzS0mjpntb93lerQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810e9f2361-b927c241-6e9e-4717-a771-91d241fca145-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e6983a44fa4573db690a5fdcd8555ab4845267b21bbb4eb62111017a61629ef
Date: Sun, 29 May 2022 07:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653807719
