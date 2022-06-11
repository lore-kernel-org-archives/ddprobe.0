Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61FD7F1
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 21:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654981379;
	h=To:Subject:From:Message-Id:Date;
	bh=iX6Iz/UmL2hwOFnParYVN3mW2ZApJIZodEXHH3G2NKM=;
	b=HWT6+2L5p/IKGBoY4fH18x6PI0/9LXH8ARH+NhgEfGRR/w0mk+R5LiT0erUDQmmf
	E9Yf7JYA+iRcWhFnFdqmdohw7Fpkq9A13F5s1cfbBuz58jSFl06V/6JDxzcyRC0mRI3
	QS1WANO72KT3eWOCWW5y9cfJs2GcbckbiARa+vsM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654981379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iX6Iz/UmL2hwOFnParYVN3mW2ZApJIZodEXHH3G2NKM=;
	b=JMunRcC2d6RU6EjE9b15Fs6xdJmDAYWHpkW+41sXTtxxlhr/8bc+HndEczZq5J1U
	oGh9oyHh2HVVeLHWC21a0r7O4i1uuyB/MAUJgqDv/zikG7WgB6yrZ3CyITrDGn6FsA4
	/wf+KHFV580w2OhPD4MGX7rTGdqaV2mIRmuFh9S4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815493c4b6-6d1882aa-e2b5-49ab-8e3b-ab9bae07d2a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4b59db52f3adbdaeb929a8e2d703bb51042771c775243466bafd72577f5fc18
Date: Sat, 11 Jun 2022 21:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654981379
