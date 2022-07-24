Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D667E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 07:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658648812;
	h=To:Subject:From:Message-Id:Date;
	bh=+97WCxMCz/7USsIR9j99Hace//JBIBb4Q/wKNJ7Dfjw=;
	b=FIzXcQUbsENLoTQjcB7dacNrGn1n0aSwxrsQiFv9ln8fCoTqQkQbAclNFY7y8dyg
	x5/dGOU3+KohgVMN7oXYn2+9f6bRJr7xJLM3T/OAmKCfu5V5ZmHl2XZ6QasnS4WKEAK
	+LDdxB1nwwOb2+apYhii7xKaeh9pkuWWPMdpdO+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658648812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+97WCxMCz/7USsIR9j99Hace//JBIBb4Q/wKNJ7Dfjw=;
	b=GjnJa34QmlGwa91qX/CU4C2IC3UEIhYSug8lB8rfm2kprasCocmgy790BghlAoBb
	8upz/pSFj+ttHyUh3sIv221uI248EpM7+UTHVuyRlCg7QUwa4WcRlbCFXAgw6RVlAT8
	w8m39CmkdADBW2purnjry6YodMF6EWXARVG/4Y6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822f2c5ad1-13fa6bf8-dec9-4abf-ae85-c97c02c7d926-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6956373d6945cbdc9de595dd49ca8c16692ce7fc9518f5103eb75d05302df8c2
Date: Sun, 24 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658648812
