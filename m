Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D80ECF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 22:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655851139;
	h=To:Subject:From:Message-Id:Date;
	bh=h25/+UDoYUzMI30Pm4wLlx6xWDU1Y2hfNZwDpiM7YxY=;
	b=WR29P3UqhlNi+iIeRefAT7TiHrmYJoBpMmJC34zfpEmek6iyEP6OFUu4EgIU3oo4
	NUmdwn1qerzsjuF3CuiuvnIRMrfkaoaVFSouNhPgZFAvAQd8MfkHlfLnbsJMxT4pBJG
	FklF++O4cCCSB7plqxUT9fp0tiLvGAf6WvCFVeZw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655851139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h25/+UDoYUzMI30Pm4wLlx6xWDU1Y2hfNZwDpiM7YxY=;
	b=VNQBkF0cwnXyozNMwO0sQINyIlflEHhZev9NBZesoAVT17rS7WUW/EWofqBcwCby
	ufzg3iP27n7tSNQxgugkjbSj8oVaAL6v85M45dw7wtn+SN2KOJV8UUgA3mSD64i7Ju1
	iS0lRvlyoxCJIuUmvXiY1P5Gk5r+oaL7uY+5qwk0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181886b4127-11f145f9-4dd5-4d00-aaf3-adfdff2ab4d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 908aa48aec65888dd38eb2a8c885e94e12fc84e6d048873e4bec7aa36e99e1f0
Date: Tue, 21 Jun 2022 22:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655851139
