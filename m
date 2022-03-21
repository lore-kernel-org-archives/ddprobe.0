Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B48E86144
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647894985;
	h=To:Subject:From:Message-Id:Date;
	bh=9leL94VpUxvuJaoHKaOrAWjdWoDFVHMVCihCmECPi/c=;
	b=Qty1f1OAegkrXZ4tjBmyKxh0TwR8gn7c3BULtyU/sEXcT8m2D+qFkl3eWoqCAQSV
	hH6orbiv+Z53us50TGSd5HeXzUpi2+4AXFVQZks4zLN5J50RCJK9YNuDTKx+GMSvA8Q
	19GEgRZmpcqv7ucvHEZxL9m+WB8q/Ex3uHU9YsjI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647894985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9leL94VpUxvuJaoHKaOrAWjdWoDFVHMVCihCmECPi/c=;
	b=F9vt93CvYdL6+9Dm3kzA7/ve6He5ofHRqSTrvuawM1JEL36wByvIsj6ZYCuy4QDC
	pykDdc2TLP04IG7SEU2YaHKHBf4N0ePsJ0XFqaG50Dk9cmWdvJPsPuQZAQeeYvvutLI
	7OzHTOK2xYGEwvcD4MkbWUsT5ZA3yjsMH0RZikDE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae31f85e-7d837a7a-d0e7-442f-b865-1d59196ad152-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a306bbf18a1660571fe2aceadbd2fe2bf1ddc1880a74824530c4962426cc715d
Date: Mon, 21 Mar 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647894984
