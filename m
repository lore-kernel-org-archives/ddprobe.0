Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A9D54C7C
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645215385;
	h=To:Subject:From:Message-Id:Date;
	bh=1ESrc7wfnFyTP/jPccvAYk0jtTkxKpHxPA2Y5bU7QQc=;
	b=WXwnyL3xrsbWX9LcHytonfpqQqdwsy2pcL7vCOoxGu7FrqQTUEnSFAdaZThTCT3K
	viYK90gmhwpTXz9fPIsVizKopNBYSkVoUgSxIK18X9SqTHJoNiLI1qwt0TN+naF1+NF
	D2bOvVMPSw4bntSajlVozQpkikulvdeb0+sFXbMo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645215385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1ESrc7wfnFyTP/jPccvAYk0jtTkxKpHxPA2Y5bU7QQc=;
	b=Ct7Aaw+6rRjbxw7KygVQ0V01ZPPfUx39x+pkZRX+0edtq7vt9dv3vh46sJAYsGVv
	0d0g5wS8gZ00V+NWHiPRZ5NAKNPPHMM0DNPGJcVdLWzd5oqsY9YCDo7SiR+UZV8Rv0X
	CoUqYvlh3asvdZ9N+SD0PQ4KB4/hdOsuIEXofk/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e7a8511-0a7f45e7-73ec-4d87-af7f-259f63d610c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 828a954baa9ad399c3ff3bbb56b3405dc35d5a930b891e81e5e3aaeacfc56769
Date: Fri, 18 Feb 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645215384
