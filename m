Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7FE29AD
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647774685;
	h=To:Subject:From:Message-Id:Date;
	bh=sdJJaigsiD+9+gH8xZHsTl8JyY/TFzdsPTlT0wI8eIU=;
	b=ffhbjRrb85PMJyNGk3CXhcYctEfI9Qfj3bB434Au2UtFNO4W5mBUSL7h/Ux8MC9I
	IdUTVYsPit7oLln3eAZyJmHmzP5sBY9/pr8MI5903EyM89p4Duj/6VZPvXFcZRYinKW
	YxEgLYUgwjgpdbsxcYGrDz60/Uyz3ViCSh2yrizQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647774685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sdJJaigsiD+9+gH8xZHsTl8JyY/TFzdsPTlT0wI8eIU=;
	b=SvAcsmfeozPouok3Byi1oKT5oCxR9HjWJmS4BiygHeiC5MIgnmL1h4mRZOJTIOdh
	Wz3tLBNJ2i8fD2yp7rpdf81EYb4HWy2mKIkFHmTZl6lz6HZwoa+3YQfleP0Yz3JyXmG
	6E2i3NBbw80EJvKgN90/3SLE87kvvcpqda6Wv138=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa7065623-37d963ca-e027-4c75-b214-d0426fbc5044-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 694413a092cf9ea53c5f1776bdfdbee60aeccac20ce33df7a5158f45543cfb9b
Date: Sun, 20 Mar 2022 11:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647774684
