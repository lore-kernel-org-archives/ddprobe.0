Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F516446
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646783785;
	h=To:Subject:From:Message-Id:Date;
	bh=/A4cApTJPwdbceVyj9zHOmLWaOXWT0qhzNCM6Y5yNYo=;
	b=UWg9v0F3NKKVUmL6plJBBj2eKs5WLzasxPB7kb0mfDk6E0wuujtuis23EZB3TXjl
	tVmFozYsDSlSDqkgW/qPDnj4ROjQlM2+pALgVw2LJWymmMlb4NdiWSf9FkN1maQ6ZDQ
	TP6QNsiEWRupyE/693UBVGOFYDgRsRZpyR1QjXQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646783785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/A4cApTJPwdbceVyj9zHOmLWaOXWT0qhzNCM6Y5yNYo=;
	b=DoEbQcdgj2bncLQs0HcvPddOpHkcGCmgEBC0ZCQvFO1kJJXWMi4nyHmRqB7ONjHK
	/P37H6bAh/9DsRELPn1fwPRZR92iAwCARFgZxHGWTqphQ2qXGavc2l3+AOdW5RdzBt8
	iLiqxNxSkYNhrbKySMVQI4tyGocTbVCN95tlVTI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6bf6677e-3d742389-3292-4455-8069-7bda743b2edb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60691235a127c3a7087e473e7b7594ccc5520647c3f1ce4cc06d710b5d87bcf7
Date: Tue, 8 Mar 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646783784
