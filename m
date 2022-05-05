Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DAA397
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 16:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651768678;
	h=To:Subject:From:Message-Id:Date;
	bh=up414MF/AIMwudV6RCdT60ae+fXX0ZEcWs7/FM4r6kU=;
	b=CK6yPKJdEOs5QmJ6ja/DhBB1rpBUT6rpSnX9+/as4iBIw6ybkz/FtO6fkP5IlQRm
	sHfD4J9UEjAEP+9cDA7Ag5F5xHwjzqsY89svlaPvTCVzGzxVBFO9RruKuNovc5qJ1Lj
	S852YnUAX7428GwXmLK3SvqCzoVMFQcLmaFks/3o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651768678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=up414MF/AIMwudV6RCdT60ae+fXX0ZEcWs7/FM4r6kU=;
	b=LCDucBwj9DfhpizigBqqCNiiu8zekd0ciEF7SJIaELWFO+2SJTgtQ5cavOdGRPjC
	2d+aofciTOFS/lUqkuM4CF/TkPgGtDYCqNqz1mou6gqzG3inPVJQEewsxoX3YwtxYmf
	1Uc/s7yyMZgeEfWgFiUbxgXs0R4sSivPPbi1+5VA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809515d790-7365872f-494b-41bb-a625-65f80f2df91b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08644246c7585ccb56cb3122e3de70a3907a471786cd73ace33a47ad0963de3a
Date: Thu, 5 May 2022 16:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651768678
