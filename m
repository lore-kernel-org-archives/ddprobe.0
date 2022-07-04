Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102F217DD
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 21:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656969412;
	h=To:Subject:From:Message-Id:Date;
	bh=lzMZWDtmABcet4btpgZVJqFOetlplHZTdnYL/OscPoA=;
	b=La3M+F3IiAr4KwKvyVIXyjWMa2wf+Xe1tc7bKV8BAi5lmcuvUQG6v2mFDK1ilWX3
	V3+4T3xsLXyOQWTicMkGhWrHbvNn3/ovl9fIBkz+Vq4ABMyu8YK64uppx+lT1JYCX1v
	nEenJ8ED7ggZk5Y5NAot6dgZXOrAjW9xEsV2B6bA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656969412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lzMZWDtmABcet4btpgZVJqFOetlplHZTdnYL/OscPoA=;
	b=JMFeP1h9awrRaPtKiqVf8aJIKUiydabTSmq4HAwk+NxeIuy2ivedlNoya3RkR9Tv
	z+WAZ05nBAbNVbtay5Moc1N/pw+Nl5hHtMApvwWMEzf1PQW+GwohCXuFKTvio2okfT2
	9BCLIeoPxWwdORiPw0/NbRycwfd7ulq1QqqrFb8Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cb12be81-d0092ea8-88e5-4530-a53e-9afa377702ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e0bc0bba100f831321996e454656c928f4f5dd4ae1a5f8e7a7ce799e0a5aef1
Date: Mon, 4 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656969412
