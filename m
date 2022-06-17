Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070894C78
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 20:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655496719;
	h=To:Subject:From:Message-Id:Date;
	bh=/eQZ1BlhQZhInKy6tXKDmM8Jj0Gcsb6VjgBjHoUhpf8=;
	b=Pmlj1RbDIyC7QFzARWDK2xqa4gZLLXLp89BnjzWiQJF6DBaVEXL2gC8SkbWMoXvr
	t7WygNAr6Zi2EC1dgwXUxOw4dbc6Ap17ds1x70CnVcC0tdcoR6LRQo3EbRNBV62Gt+v
	aN+okIIyPERm5x70Jg1uj67zw+I/EmzmXed5OKww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655496719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/eQZ1BlhQZhInKy6tXKDmM8Jj0Gcsb6VjgBjHoUhpf8=;
	b=Lm/tE5iuw9vE2UxE0/rzYgc29A/3QqlLvNlrXRcZPluwbgA41DXo0WmntL06Oqrm
	RnvCK2PzOXxDWAwfyOvESuJ5CY3jOWS1KuvmEMCwYvdlkQG+mHLaVPvmKChKKKGWsPm
	UP/Yxa3VlMCRFcyywTpI2jZh7G4AlemeNBPSwVXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181734b3b96-96357352-6eff-4266-8718-6e57cfb2f376-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c61310ed7b210a82bc09a87723f7aac26ba06858f75fbfe6ca627b740f5c468
Date: Fri, 17 Jun 2022 20:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655496719
