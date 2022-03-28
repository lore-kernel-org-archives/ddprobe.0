Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0935E7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 16:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648483618;
	h=To:Subject:From:Message-Id:Date;
	bh=bsVGDakjvPFD75Qp05MFm0QnnMdo9fBe/ngXrMhut/Y=;
	b=jaY62jLWMn0Vi39/JBccoVJUSpE0iJt836N93f+vK8TM97Z/t9v3kmcLvq0DCEjl
	39epeWjb+kRXMntQ9x0RgWkqyi3KMMdOlOojRLq/1hGr9Pnuvcj8moJPNFxm5gotvRU
	6JeVgLlXkb/avKzQSFsXC56Z2RGsYgaMB0HN4c5s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648483618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bsVGDakjvPFD75Qp05MFm0QnnMdo9fBe/ngXrMhut/Y=;
	b=HZtBzWqU9+FKFvqTthQiy2uEBP6y7La6UBBvreETMnWVx56K+ED9uuf3VMoJ10x5
	0JuEP7R+E2KkDrTWtB8VgoOKBEH3IjJ4TiPXXEMbYrsU/0idUvbtNols1qrI6l4gisj
	XXYDzAxo1xCkmKIhB89QJAnYpk8REOYTifax2i8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd147ce1a-6aeff22b-99bc-4bdc-9257-4b440dd24abd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50556021981d8727a74cf69591534444574657676b27a7ae9498090e124dab66
Date: Mon, 28 Mar 2022 16:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648483618
