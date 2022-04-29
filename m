Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A067B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 08:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651220818;
	h=To:Subject:From:Message-Id:Date;
	bh=r3pQYFsgNE+u6VFdYm+sGlREyhGiPRZvMmr9swdjkiU=;
	b=j+X3Y73k4GJJhLo7dzQaAThj4Fr76ri+RHWGQ2FZVCeOM5NyltJMIENdmi4B3IZF
	RuYgRSoMvTd4wWHUFbdgH1d6i3JcJ1VEtCu79AUsrIC/UnHwR5Np5YYJlEAMFevikDP
	nwEAJLopNPrCF4RUrJTeiQsmT4v9zH7G7NgiAHPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651220818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r3pQYFsgNE+u6VFdYm+sGlREyhGiPRZvMmr9swdjkiU=;
	b=ThIjZ0ZKAbNRLo92+E2iCLkW6EhVe6Y+zoxEz6oVjNStH4RYaKVzmbSxJfa6zho8
	xXHbq851BaX2yGokRQ4c+q+0TqMYBN6XWx86WLd64gItHIYWp2lCC4uJbYHbnWgVEfD
	/7nd4is4dFQswEuMJzfEWCj5sQcPoobk8TzCkTt0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180746e2969-f0db8921-cad5-47a8-bd26-a4d3e2508274-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c812f49da1168aa247acb935c18352d5b8ddd6576129f697f2a47d7a7f728b8a
Date: Fri, 29 Apr 2022 08:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651220818
