Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4107F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 09:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651568698;
	h=To:Subject:From:Message-Id:Date;
	bh=JCovXBUIwLFTchSCfRvFZiIoQeSNvjCTGA6eCkIyg3s=;
	b=WIkCuqB01yNgB8VoOJ0T1sWAtgF6DSnCCrk8aCGT3l4VXQTkjvIYwFChONgf0xDY
	i0yYG2SqeSzVtpQksUNUa1HFTTmN/oxIh6cJQUM77vMdR5nyuJNzCghM5n9L9rWCoY+
	I8EtEN05O4YltdwwEsaYgT3jRW8wePIITcazyS6o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651568698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JCovXBUIwLFTchSCfRvFZiIoQeSNvjCTGA6eCkIyg3s=;
	b=M/RI2T5PyimO3iRyUmLnX0vKicJ0lekWply/D8KtBq8IR3TYjXDs5Of9SRr65ZaW
	gQC8yjva6gZdAPOG8Fa7V5s/m0PotWhvlavMBG7CJxvua3Q3u8tM4wuYni754O80nnc
	bjVtiu+CGjwUf6tLU3Cs/9d36s27e2JmYKt8EZVE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180892a63a7-22f3dce8-4b67-42e9-b72c-2caa03cc795e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfd2ed1303a5a3b3029de202ac4dd8dfa25bee8da00ba71ecc21bb83042425dd
Date: Tue, 3 May 2022 09:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651568698
