Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB4E7C
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659966653;
	h=To:Subject:From:Message-Id:Date;
	bh=akMWyqpf2DHEsJdp/8PdmGKtaLsytu7MU6IVAK9wtfc=;
	b=kjm7MMD10fci1m3jDs+P2tcNcK+GeV+6yQHrYFfl3YfiQf8QCy6ApuKd0lAVnADo
	7jywKkHxIqMsSmtTBX+kCOr+zhXoavgm1FHEgh7hPFRvfkebLh1dTfXS2NS/kjCLMRL
	JqeJtC6g/SHI3CAEB7vjco3bcrV7D2fq69+V3WyY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659966653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=akMWyqpf2DHEsJdp/8PdmGKtaLsytu7MU6IVAK9wtfc=;
	b=eQpoARUuJNMqXsss+HZ6QsyxIk3pfTq7Hwl4XRJ9ivdE+bxoflrVT14P8DLva690
	pgcGsn2IKjWJ+3HudAenmi3Il52gTVCRDSM2Jc2fT0nU5xKre8x2bth3N6bdxiPPxBK
	9p7JD51YSBPMs39IflPJo5JQ9fVn8mpWQ46Dkmc4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827db9009e-f82f98ec-8f35-43b8-b338-09acc55d815e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f3eae1d4ee2ec313f71bb90c1fb4363fc75c8d89fb8913506523c886994e782
Date: Mon, 8 Aug 2022 13:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659966652
