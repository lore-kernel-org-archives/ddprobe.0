Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EFE185A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 23:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650496918;
	h=To:Subject:From:Message-Id:Date;
	bh=HFTLLMr/rAQYr5AnfNMF4u5UAsm+V1iQyG83rWbCRG8=;
	b=fi9/LCXqaR6ZRC3FHNkXorVdFM210VuTdKsR5mlLHroj3R6Y3dFLatcM/xUwXJ1/
	KO0BIPAtvBboOdlbinbAIEzEHtJF6jJJnecpevuIqEz5kntla/bCxJZqiD2dK3tvODT
	PTipNryEqqFtmVh3qLbEoqlOUTjWg6ol+CCUUiWY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650496918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HFTLLMr/rAQYr5AnfNMF4u5UAsm+V1iQyG83rWbCRG8=;
	b=P1yexOVY32SdVwEaTu9qZED850O2ArXWWiG5Q06WaE85EvXW1pd47poRVv8kLJP2
	1jbjAQLmWDi2eO3sOSz1r7A0H2OSqVSqKrMYY8/LrtKSk7malkBkOEc02OKW1FH/bQY
	2lglJMCipzW1COYWCbo4pOcJvTYos4tYv1YV8Nqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804948533a-13a4d246-2da4-441c-87a4-c092c02daed1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c845956ed7b79958a56aaa88c60420874b597ac55e2dd139116acc9b45d140f
Date: Wed, 20 Apr 2022 23:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650496918
