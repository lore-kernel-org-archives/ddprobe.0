Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004431C3B
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 04:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657515412;
	h=To:Subject:From:Message-Id:Date;
	bh=vRC7BzBE2xCa8n4fEixX38WNPu3NkpNgc1njyfASgPs=;
	b=c8OR+ySM7aSe24gmb3tFlQEFzFHoVsgEo6wpc0oyWitZ0dUZ0XTn0ZSf5x32svy+
	/vhA8IJK42sYO9U7q6IWVcDZ7AsLI6YwtA40LUafV02+6tlJCTRawt8z7s8kFRLs08y
	QqO3j1ccViWvTMrNB6U2ClQzmH2GOXj4qjijAQx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657515412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vRC7BzBE2xCa8n4fEixX38WNPu3NkpNgc1njyfASgPs=;
	b=XMxMzoGzvkgIJmO02F7lLR3Yz47d7dSTKe4wHI/HuuTdHmSzn2X8kITuVC5Pl0PQ
	8P7vO0pDYavXBc75TXOmZIOVDI/+LoH6vB3q2VBwReWa+5X4r5hJjRemknBE1cHEwng
	tB0ihRRFpS5odEILnL2fGESrECktbO/LUtpiKf2Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eb9e0b32-3e96edba-d9ac-4dd6-908b-81bcf1d0acad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b5c883296fb93b1d00f3f6daaf4c57a37ab8d1b80801d70f8dd80ac4f6b9eba
Date: Mon, 11 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657515412
