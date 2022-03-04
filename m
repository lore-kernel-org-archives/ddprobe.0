Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5B7815
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646378184;
	h=To:Subject:From:Message-Id:Date;
	bh=mAZ2YtAxQu4EeGjGOLuuDm5MY3Iwqe62rLm9ysrXOK4=;
	b=YIbZMB0S1mzJajgx1MzvyBYFfVH+IcR2oNP7Y4lBawnonZb19cEN5DVlyqUEIzUK
	5juV2IXkYJtI4s/WRPpXG3ijl+XSD2QiV3ZbdpioCI7whDvPdooQSV726YcXbrIioT+
	1crU7fM8kB4IlfJqro/djbH0NRyqqV4Rha6IqNyw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646378184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mAZ2YtAxQu4EeGjGOLuuDm5MY3Iwqe62rLm9ysrXOK4=;
	b=Xi8c5DjAIAjkCRjdPGTRao3fSm6Z7fJFOvHP+CnckTM+UpWK8s7PAPmVuWQacB4K
	uvFQMV3NxAdKvYhJMJOIvpvX6zpcyzwU9stfLALkUhtgUY7n/WgAF5EQgvaTFykqRyt
	qE0T14S6+bn1WeJRrj7duU59DGOzuWrbZXPyM9VQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f53c97026-7d7b03de-4b01-466d-ad14-1bb3e2c771e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0a71c59bed2daa1aa1329d0ff30cfa9f8d499a76757ecdabe4b3d0e09841264
Date: Fri, 4 Mar 2022 07:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646378184
