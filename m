Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFBF728E5
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 13:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649164618;
	h=To:Subject:From:Message-Id:Date;
	bh=EHqCNCym52AxDaMnJt1JlgbqlJk5aomIIbbbwRxqlIw=;
	b=cpYaW9CKtjJDkDCQaY1zGvfYwIrDDwGd1QjMXDMEEbiMSOlWXxtSsUw2Nuj13opF
	wcvnp8CTZzoMWcLXTbekB1ICLxcg2FnS2TUZk6jfizhwsRf0YLSStYdynkBSgp41EsB
	gMdc+RDf10y/23ZzKJxt+iZxZLPORCldINw/h5OE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649164618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EHqCNCym52AxDaMnJt1JlgbqlJk5aomIIbbbwRxqlIw=;
	b=fv6QB1dhTtfvYXX6V3TAR1g2qLYDPD3obDnbB0HrGzoAmAtHUNf/ByD2sASW8zKW
	fWZdiujmqPiGsA/Rq0rZBDRs57rBhd3VPMkDa2r7JCx0F00ltZu060L3YvlJVwFTGLc
	s77b9YXs0dSovrs9egnpRZdbcQDW/ihKWKCXvs7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff9df09d4-31ad3333-fae7-47cc-a252-4add692a57c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32b40d12dcb567459bafda4be2ee9b87ae5e971cbfa3be5d97c1c1e3d3fc3d4e
Date: Tue, 5 Apr 2022 13:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649164618
