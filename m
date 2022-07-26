Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E2C2CA2
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658860252;
	h=To:Subject:From:Message-Id:Date;
	bh=Z9gWlt4xcabNSbbkfYmxdEQ68Ce3NQmk2N5h5uNYrM4=;
	b=UfR939PXBZNxv2ZakhmoUJxqNxW+dcEdX6Qo8enDKBSfBdtcrTQsoyiaMKUIt0DW
	bqaA8jF3vJbbIsytC0/p+Z19B51txtm6Fwc81JQit96J06dnv206Q8nPpaHiqkyxHZw
	pwBENTWDfxN8t3QRQ0AjlW1yNGhpyflWKkaylM9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658860252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z9gWlt4xcabNSbbkfYmxdEQ68Ce3NQmk2N5h5uNYrM4=;
	b=ApNTFKig+QqyPEZpfYsSawSfoq2532DIajNyGhhWylYIMUkoyrHBsWBDzTkOLlzj
	AkXLXJ9m+SOfRiqW/zdNHCNTAida/O/wYQHULsJG8oaXoSteW5EmNWyJOdpoCUQSwqJ
	TrOJpVBe+teR+Cvqz4KKJN87XGiUA5D1rH44cM10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823bc6adc4-3882b26c-2cf0-47fb-b9cc-1624a061c846-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdb077de7667e3a86d452cef4dd9b50cff2159d9247a828dcebdd246eca09010
Date: Tue, 26 Jul 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658860252
