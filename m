Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D04220E4
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660320653;
	h=To:Subject:From:Message-Id:Date;
	bh=ZIvbD3Pzs6nCj0z/sjTlAQQY1T9tFpOYKJVZ5di2UUY=;
	b=GkBi6WQALRMwqdbyngyae/2jnZyUbMDFUAJf/5GRn2UaukrdzarCzB4JdBybVmdY
	kK+/A37JxImdiqPdrhjNTQU9mOm0TcuLtfoz6Gq3scxh8t5pfCvKffgGMYMiWiOt6yz
	KmhU2kRHJLEcz9hMUUQ2eppD0E3CHtl6cCg+c+2s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660320653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZIvbD3Pzs6nCj0z/sjTlAQQY1T9tFpOYKJVZ5di2UUY=;
	b=E3pCtRxxqc3xpVeTePbTUdABYgxi9zpw7kaJC+9NCRCRSK57A0O5u2l9nSA4NMiO
	4iMIZerl4/4RfFX8ZMf2fHu/GNdPnDwEBNC1NmTJK2OG3ZQe3XYg1EOh/M3R9RxjssN
	iXTcrJ+iQT+zJRCJHyxNQ1hPgS1C6Y3jtUs/+E1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018292d29e03-573f5944-ca55-45f6-9507-0e546fffc3a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5293a8ae30c49caa52c2e078594e7b74862059e47a23d20c346b2719293cdb65
Date: Fri, 12 Aug 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660320652
