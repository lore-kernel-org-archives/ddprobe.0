Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B747F
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661155252;
	h=To:Subject:From:Message-Id:Date;
	bh=URCxF2CDA3cl4f8l3nWhmnfUBLp+YM3B10ZMG2SspoY=;
	b=Nxz0QxuRtLnShwejt695cyjrqX2uFtNtmdR2TvrFW9SEafm7E3sLJimRNcLhXqj4
	B7hABWYhon2cZNkzi//E5GiXjR8HI9bbz1Nkqn6s5/dJcimfeiqWocFGllI1d78ppAg
	3ebh5O5xKozI0QKqlL+s7KR0Kchp9L835v2rD/zU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661155252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=URCxF2CDA3cl4f8l3nWhmnfUBLp+YM3B10ZMG2SspoY=;
	b=SN4WDYShIJOiLohWkfjGsYdTbjK9L5sycA4KxBJr+iR/NknLkSF+Tj9MVT7vu55q
	Ak1VAE1tv/YeEECE3rq4CN+6mGwEhjgLaX/CDI9bH+kuyNgtOpREbSoq5fafCOOXKbR
	EtGyShAxT2JGfmB/zrJUX3CrIcQmnHR44LDK4lKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c4919946-58faa30f-6d96-425e-82c4-8bd1f202ffa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fca98350210d938341b53d30956b77b66044c419d585d6a7cf06425eb4e8440
Date: Mon, 22 Aug 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661155252
