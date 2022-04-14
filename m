Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACA03219
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 20:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649967059;
	h=To:Subject:From:Message-Id:Date;
	bh=STWyYFkSuZ5PF/TQOxo9oAG9+SXIt4NJ718O6UtpZN4=;
	b=MPlykS8i5VYwlicXOJbF/s4iokrcGs3tKJmG9H/sEZJBPAldIszxBJtSvFwbiJFn
	w5bRcSQynZPfkUYLj/lyvkS5iy0l1WtMPAaP9IqjsT6cyvcjzUtDrh0VeLEp389tCI2
	4O1+GwrU21uqZTXd0YrQbNaqZwK2K98OOaFftbD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649967059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=STWyYFkSuZ5PF/TQOxo9oAG9+SXIt4NJ718O6UtpZN4=;
	b=MAlDiLkdbHnKIIojkZovPBnULt2yz1h9XAp+zIeBBgawK3qaIUkaZSdrfVX2e0Ir
	YJva2xEe/fibWX44H8P8/niCya3dZ3oXJPvl2goTIj7que7E8/Axo/FTHNmFS/4n+iS
	XWemYRLZX3nft2EHc8E5mVTX/TIncbY1AZHlljw4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018029b34d58-0e8b7bcd-b127-49c2-80c5-3a30ab479599-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5639b4e8e58722fcebdcadd8e806a2b2bfd54f58d4ce134a899f0ff4c0a9f468
Date: Thu, 14 Apr 2022 20:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649967058
