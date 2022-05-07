Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAD2A23
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 01:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651888678;
	h=To:Subject:From:Message-Id:Date;
	bh=4DkeIZIu59ceJX2ElenEQ9ziMhxFbje7Fz2iuEChXT8=;
	b=idzzKiQHrvcjoBohJaxkB5tBrbYq8PluyandYxCLlDDJC0hjJ48PuhPyFAORL3gh
	L0OtREobv+7Ho+JjMlJ8GnFZzii1pk7i6/ROXIA7fq+xX7mtFmh0cGme0D+BIG8p8Hs
	zO4Hb0OT7PQ0X8t7EpdvR4uNIy9886yc4Mwsg3Us=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651888678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4DkeIZIu59ceJX2ElenEQ9ziMhxFbje7Fz2iuEChXT8=;
	b=IUd4U/tBjZ21P/fL41DxeZrGtjfnPw7g2mn8OKMwNW8FukmFEx0g1Igf3D8QGBMD
	QItscifNKGZHUajMC/IMCSUHdyOYUyhIbIncvgtYMks8sHOdh27PxpAo3UIYMSUUCNu
	JuCg3IlkR0UciG7aKOxYthKpQo+BbwX1weL5ueFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809c3ce636-d004831c-e8e2-41f2-8543-49d5818381d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 626f8e84bff8122931ef2da56151454469a46cd8f7cb68a697f6005a4de7bb42
Date: Sat, 7 May 2022 01:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651888678
