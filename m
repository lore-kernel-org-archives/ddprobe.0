Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F404D435A
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 11:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648466698;
	h=To:Subject:From:Message-Id:Date;
	bh=Ef3QS7+l1PCcyxet1fCKehRgy0PeKUKS6YzyGKw8z+s=;
	b=aU0Uejl7ez4Rj0BvNMw9+5ksCljdXbQ345VOR6AIHzY0wJP/jX3a7KSJs4yaB/pG
	S7IEn6A0umApc3NL9h8gVbg0z6nUNhK8LcBys8M1QppFzNC5EAsu22Fa0h8r1wAm8YN
	JiC2OeoTWlCx2wYwL2iSPSbZkpTHFveEsmdy/FFY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648466698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ef3QS7+l1PCcyxet1fCKehRgy0PeKUKS6YzyGKw8z+s=;
	b=jtLyfpOLdCYV+CTpir73npn5IdwDJ99cKEBgzYemnUTFaXr/xTqmfYZUtoIf1AvF
	RLNzKpM64g1d/K9awG6eK9O1MVTIw8fkolJBJNlT1LuXEH0/VWTGCW20y0qhpzrCLeo
	Uoa+Bv0PWmFfDKh8zGrHwzDYxlU7CJJ593dfqUWk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd045a041-a5893358-4255-4819-b7fc-4729ded27706-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f37e84348389612f23a02b9b19aff06fae897b375bfc35696da42b25b109ef5
Date: Mon, 28 Mar 2022 11:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648466698
