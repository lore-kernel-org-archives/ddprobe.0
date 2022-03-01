Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABFF67C
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646161584;
	h=To:Subject:From:Message-Id:Date;
	bh=xiOTc9fDPPU9bbl2Xrf71nHRXLIfB6yOMZxCv8yRbY4=;
	b=TxxpxNy4CVVUx3Zu43gDxYhn1FO6oLmQYdzXkiozIT1uum0/SaZS/lHTzJHKdYQH
	QA1DEd6FzteaX9PEl3IwjGMQ8uH4HAuTDLxu7EjFiIPZIlWRg+Jbq2Doy32pYVXYf+N
	m3vdrNGSUw1rUClY9Kx4QoH30ZbJNysiTgWQMvTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646161584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xiOTc9fDPPU9bbl2Xrf71nHRXLIfB6yOMZxCv8yRbY4=;
	b=Fd6ppuc64PMgmaHHnymVCLJ6lIUIPernG5rT+SnYZgyoGRxIEnw/3nDJdyfhDFFT
	QEcSgke2Llwrv9nTVtjL/E6jPJNxebT5hb0Lll+RfvWKUlp4qw7KvvCtgSaEvk5k+qo
	cMgdo+mnwYbvNpY+UiliRmxucC8IaOidIGYBZuR0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f46e06267-9f4242e3-56c6-4aab-8b7a-799e9f086ddc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc0b4e30574c5b6e59a48150b8c4de2162e56e27239d7913df223ef9dcd2d058
Date: Tue, 1 Mar 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646161584
