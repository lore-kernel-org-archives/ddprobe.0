Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667855CB7
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660123252;
	h=To:Subject:From:Message-Id:Date;
	bh=QVuB3F3ngUAZ0OKPsWoIAojVv6XNOMgsrLNviTfDf5Y=;
	b=A28z7+lIC/IAk/eTWapmglAWbPY6eo1iaE7/gRerkuD17tveCn4ia/eCui6fA2I0
	ni+gZ3Z5brCQmsAkI/QFR/HWdSANDkUxirkdB7/VaT6kxpGQ5YOFEE2LI+35lUhojB/
	f8i09sjOMKqWgCcjLF9PLfgw3nFqbdHVrBgoswlA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660123252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QVuB3F3ngUAZ0OKPsWoIAojVv6XNOMgsrLNviTfDf5Y=;
	b=hYskyW7Eu4yPpEJDht7LUTo1IMt/W4p/9s0seTFRJXGDMnQZ/i+gXCjd2m8YJMFQ
	Oxn5Hhl/Pcx4y3HyLaXEbEQ2A+Ka9XY7FI3VcckTFgepMJUJqE6rA8OLnvInmhpT713
	z2UuYwkyLrmip+pGoitINxxGFmYx9nP7gwM5RLZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182870e8768-d978a9f4-458b-413f-9a08-31724f9d444a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91758bcf88a82a914237cc6a8bbd52fa8a62a1b21e150063df250aef4c88632a
Date: Wed, 10 Aug 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660123252
