Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B32C31B73
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647271585;
	h=To:Subject:From:Message-Id:Date;
	bh=dgGT4JdDCX+z/PhDwaUJe1oOxqZrzW37BiCb1G/LWYk=;
	b=D36RH4xbLeyDl+W1/gIiDkpuKanLWTHMea+qh0GNXg+bBBQmZv471H7/Ps5CK9mt
	XXficUYUhCdsLEJKoo5BGEGjOKy2/oX3QPISXJ0hO9bOrZ0Jz8bxyU111KN4Cg8IaZs
	MQa8x4rO3hTs7XCxbWxYlWk/wA1TwIQ0kH2wh1sg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647271585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dgGT4JdDCX+z/PhDwaUJe1oOxqZrzW37BiCb1G/LWYk=;
	b=HM2ep5E9lbxZSLlIC+ATKRh9wmrWWdRzKW5p0/y6LgHiIRfMXpxDKU62cK8S7RWw
	UKdmTC0dVCG88MFyoZK5uoYJhbXHCTIRE1cNE/5039NbpFUTyFiNXS7RsD5YNB9USjR
	6M0A4jB3wmGcUgicfQlYYOzqhk5VlOHG/LwFBQYA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8909a3e1-9f1f1292-ecdc-41ad-acc0-c1c6efbd2419-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28c95e859919023239507ba25efe32726c4f782f82025f66eeea71d7cebfa029
Date: Mon, 14 Mar 2022 15:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647271584
