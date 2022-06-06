Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF721854
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 01:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654479359;
	h=To:Subject:From:Message-Id:Date;
	bh=IEGVPQtpujk/dNRDJ/y4OkNEfBMCEpNYKu/tW7OI6cM=;
	b=V/yg67oQeL2s+zmboXuXbNZDbNKdHg9DszU8/6XvDbfJTvVBguI1rIe2iRSbQ1JZ
	E2Z0geZjerOGscH9xqx/3daLn0hDN3lAOHB6IB8v9sjeVNSvfw9z9k8tsvbfXDbdZLR
	Db3IsO3yHRn9yEDWuRtPMhZ3WNKFLiuuZKIqDBGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654479359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IEGVPQtpujk/dNRDJ/y4OkNEfBMCEpNYKu/tW7OI6cM=;
	b=cwdmrm/iNpz5F3dYiAVslghok4smZGdN3MTUI4dvvOkkMLRw10t+YX+hNgLC3ejs
	UHygDAZ1Vj3mul0gb2Wluk+/4+etJMW+psLzNtidj9oSzxBR0WyfFAFe4jx3Cubq98v
	dVVQRnttUr0ByLNJi0dpK56OpJ6wIVBu/TENb6RM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018136a78d48-b0174a3a-8b3f-459f-9011-81dc66950c0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0b71013a97d7fc6e1fde7e8779ad364f6cc49d505ae428d8c1344216758e4cd
Date: Mon, 6 Jun 2022 01:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654479359
