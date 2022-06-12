Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B747A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 12:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655036579;
	h=To:Subject:From:Message-Id:Date;
	bh=r0uMuTAutRR44Iu6cdry0GWfWkb9v5bMCEPWXjSQnLA=;
	b=e+o6os3FdqCMJXQylDBK9hntOr3Zyqg4iJIF30Zp6pc58oEi95aG9nlZoFnTvtBB
	wFdN+Ng8PIjUUCJwl4ATn8Ly31oZigfZDCAOpdiiJ6TGbTWNljkRzd+eRn5XrL1eT8t
	wvlbzQWnPA5Z40vE97UgiALWBvGlYEX8LkeQpuTs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655036579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r0uMuTAutRR44Iu6cdry0GWfWkb9v5bMCEPWXjSQnLA=;
	b=RyvQXsned0tqZDvH7B++SppagQsUUftf8bkluz1QMXBB7RyGey+/Yj/wnRZxks3e
	EV4Osk3TnuT3EBNcBdZSW7FLHhdQbE8oXHGcWYRwMx4x1q0FnTAf+74G2ov8tPBWog/
	2wedjorVt8i0brxD4yPX5Z1NKw11IUrKdvcgMG4U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018157de0dc8-31530405-e6c1-4398-b8f8-572b022ad6d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 108ea6976da7ef40e67f7779395f4b46e47dbbd82d62115d25d8cc0d0416955a
Date: Sun, 12 Jun 2022 12:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655036579
