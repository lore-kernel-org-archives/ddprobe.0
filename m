Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A47B184A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 07:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655191079;
	h=To:Subject:From:Message-Id:Date;
	bh=Ifjdeelk0Z97xtUxeRhDaiBM+c9cf2YFzhX9sZ4O++g=;
	b=DmTSGikT4xsj/TzoT9o+qol2P2crCNypVWDzKuANh3LLGXKlIDYBplltg0/O4UTw
	AA8rHDOD/qFh80wlpgh7HTSQ6Zlo91DZbJSz7CDlhgq+C0Ai87qbysuvc/bh04VoYSG
	6GdO6ThyzmSyfXFM1LL+IqMQGSGQOwPBg4r1BQNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655191079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ifjdeelk0Z97xtUxeRhDaiBM+c9cf2YFzhX9sZ4O++g=;
	b=QpouHojMpS6uxwhWi4BpzDcL7aryOh8R9c2wEJXdf6GbuLx5G0qlHtTFWzu627Am
	KcztgKG6rIkCorhVMPdNvPY96MK3s1q49RFOQBvf5GfAFMDQMC7iF2UfrLDHeIDTNxf
	7F0hKjkGg3Xgn70FnPX1i9I80EZWb14owlF1/ZuA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816113891f-ed73c18a-c9fe-4d82-8dcf-6eddc557c757-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 764784c5207bcf85507732c1ee014b5f6dafaa15de2b46f4af6cbfddd04b7d17
Date: Tue, 14 Jun 2022 07:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655191079
