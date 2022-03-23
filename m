Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C16F97A
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 00:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647996085;
	h=To:Subject:From:Message-Id:Date;
	bh=44PQaoX75L9yiP8Yoe+J1s+npEAcmTW1XSA0Qrfwlyw=;
	b=Slt5e7yYPYShB2cOT6vKmDipsXAyA3fG3fkDPobqnB5E5CB7FkesMEC94e7C+OI0
	0M0nU3hSixsGhEz33zcwKvjVKMy4Gf3F1gc/L5YQNIWQTrHDFoBESKlU9INBFEu8E+9
	q9ckVNtvuVLtiVGbaZylnnyAWFEXyIcx/3KljJSE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647996085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=44PQaoX75L9yiP8Yoe+J1s+npEAcmTW1XSA0Qrfwlyw=;
	b=MSKdxi8fbXpZi23lkbJLJtAmrEAJEMSt3PCTSpYu8i7EIMdAfm3kxDRI/fBgyc5M
	px0oTv0sa3bgpq4CwrH8giJhfEMSQrQ6V3b2gB3VuHTkn3nnhWp7cULqFaqQ7HuKuA6
	3lDSkXV4FaXmaTVsXLeJadOX8K3NDxET8ArYYyH8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb438a25b-c485d99b-5ef7-4cde-bebd-7a5e4a68abab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fcf8ab45c4370fbf15196d8eacd102bd3ac27d01953803763e4f623cb31ff95
Date: Wed, 23 Mar 2022 00:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647996084
