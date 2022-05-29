Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBCC37A
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 07:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653808979;
	h=To:Subject:From:Message-Id:Date;
	bh=1nr3R1lhB51g0BAKEI/SwsVXePwDRVWuaQWwQim3YVI=;
	b=GflDHcZpDiQagRta9Wy2NZQywCoNHnwG/6aFCpV4IuFmBAmR8ZF1t0DmicHc1Q44
	FtuPMUrgLgrmf55W902SUBxs1z/9a80S0moYYhFYxgvugoY0pFryPeMOC/hES7h/lrT
	ARTbNmB4z213rUoBR5MTttEct1LsnJCRfRAIyq6M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653808979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1nr3R1lhB51g0BAKEI/SwsVXePwDRVWuaQWwQim3YVI=;
	b=OYG3qGLifH4W4OzF4FZINUuyy3Af8SNxaPF1JR8tbqVhidoEwdLb65jZ3+XTqH7i
	6uzeVGxXNffALVTAdiayEliVB9Ddr4S/PTan17+BtHcOjluwyH8V+DDNZw4gVtEyZL4
	/67FMP03DTrx5bJi+ryz0C1eyjBfZNo5UEmgbtAQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810eb25d44-9f1b37cf-aa98-43db-9f9d-8608414efedc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d3cd734993cdb77b9e49a7ada79b3a15f72e2a492b2f8332ff1c7316a6f4707
Date: Sun, 29 May 2022 07:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653808979
