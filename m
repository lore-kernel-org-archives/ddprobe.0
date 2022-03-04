Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139C87C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646420185;
	h=To:Subject:From:Message-Id:Date;
	bh=oyodYfQpjRNmuPMSpzURKQo+52G5LBjJ3WuIX21z3T4=;
	b=mN4kSfgCPZbk2lzi9MFjZ9nn3L6NZwaKJe4JERCn6eXv8Emv1xHvyOWPZxdS3och
	7RzxWQk2d+ybbqZmFj87SHr1myfW9IbYKo6FTu4QytHLJX3zjuauQup3j/dCx49c23y
	tRgSTH1O0lVI7FqhHF77gjPVY+7Mx/2ONa4LwIWg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646420185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oyodYfQpjRNmuPMSpzURKQo+52G5LBjJ3WuIX21z3T4=;
	b=K6b/9XtjmMkUDFTI07RR1dCUN8rartlKWCSONskHlbsd3ooZqCPqSCHhrfV6JFsj
	J095m8rKZLWeKdUmGgdGfR70uuFio/feOPZhW6jpszFJdvuvq+SBbeQzhhRBBenBxHJ
	I47Ji8+xqu7C+3rHMTicj5fkq5ZtqiRdGFf569zA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f564a4f18-3cfb7bdb-39c0-425a-afe7-250fe49f06b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d950e97b2e2b016e08f7523f429d066aaa87e53a16a894534ad030215f1d3ff2
Date: Fri, 4 Mar 2022 18:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646420184
