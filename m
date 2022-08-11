Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9D3146A8
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660241453;
	h=To:Subject:From:Message-Id:Date;
	bh=81u47AgpEk3wlf0+y/GS9U9C1nOlKaYxfbzktYPdR80=;
	b=LhKarMQsSJSzU1tOX7hLzTTXPgh5YTXxrZT4hR9hcet5fzVL4IdMb1lhQGiP7z4e
	fpzvWsbplO5m1ycSGQYOgq/2rDON6nAmIaDJq40p3WpRH2OmUtU4o/O2drIyZMFfvRn
	NCX7BvMisLb8boswV2hLeY+fNG3mu0DsR6A0Vs5o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660241453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=81u47AgpEk3wlf0+y/GS9U9C1nOlKaYxfbzktYPdR80=;
	b=d48hc9bav9NdX4fDGS3jp7GYcsN8JRf9dE8LHSH6z0HfHB5Oot27sl9c8QKdkDXb
	1V9IGFXMa6uxKPWg9dU4y77PhwwBiiyLNn6NL6plSGL4d+06dKBMqkUuwJcLEO9MtGU
	R901GpS3j7coxN987JqDCSIK+qAhzk+Ve76bAT3Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828e1a1eaa-1777e086-4b13-49a1-9075-7144520cb56b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dae93dadc7424794934191a5601bbdfa6e7f7cd627b739bd1e75eb41c548e9f7
Date: Thu, 11 Aug 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660241452
