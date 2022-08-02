Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545337F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659414652;
	h=To:Subject:From:Message-Id:Date;
	bh=rVZ2nDKjI1RnLNInQXlH6zJU2zABMA/Oun7PNCGQ/84=;
	b=FPS2GgxqVMhxh4Di0R/60FUj3PQSCbVnl0fk2MYI7hJZkhNBMfOy+jCPVtNcdSEW
	uxfWqdpIBXceqtkZxB8cCJX5a2PoyGAW6fntj93qPRIIvw/7h6ae9OkuwJNav8MYgSy
	sCdwKqQsa8/FScmZ+DyplMDMxgXUbvG/wvbismoU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659414652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rVZ2nDKjI1RnLNInQXlH6zJU2zABMA/Oun7PNCGQ/84=;
	b=WB5w31iapMtUZNOGTrLCVVxikhGtCTrmre3+bq7gH78hFpb+/JfIntRm+t05Y2YF
	RC+d6r4+wrh1vwHG14ZBeshICKPVakha7Hg4Z2Y3chjWPObkzX0S6a1O7WgDMulzNgL
	qzv+n1k8Uf+MyDHTR+opgbQkl17t+QMXJzLnFEY4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825cd2269c-3923c19d-f901-4827-a89e-7ea4b5337c24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5d3a807fa2e9c65fb6ea571450a0b4c15cd90a8aca39cfac6695390574b55f7
Date: Tue, 2 Aug 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659414652
