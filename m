Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3007C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 11:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650799318;
	h=To:Subject:From:Message-Id:Date;
	bh=sTHKOesogcLBjmchXkRNRPvBM7h5Lh48smH26klmapE=;
	b=U3ZFbRsgqnuNWXqvA8u4C1NtTtuD+vZY0A/mIKffFYF2F9VbDbZO/cIdO+pjs+XA
	WKrt8wA6PTyzYpKE094biC3j79n1RB4q8mp1I/Ee8jkLK6G0kuekOitWgY6ovCRV7eB
	y4JCeMGePpZP9a/HWMDWZQqwlBDl5gBwYSFyBz0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650799318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sTHKOesogcLBjmchXkRNRPvBM7h5Lh48smH26klmapE=;
	b=HAOfz5I+h2bfxvr8KaGTTioZ/ZCH8gtAlOOciPCZB4ZqLfNobsp7jN2PKZbfgxaY
	wtZsn7Wj3pFkyXBolgJgO3x9c/aJDd11z/aofuXdVRkiZHXMm9AF++JiApleST6UC2J
	ZxcaO8VQnV5ZehjJzkgfiPww8MMbfxHp1v9bTPec=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805b4e94fb-139fc3f0-1e61-4fb8-a60d-c835a5f94f35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30a21ae0bf34ec6551af0afb389146b5423807e8320be69cb79b46534d727a8e
Date: Sun, 24 Apr 2022 11:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650799318
