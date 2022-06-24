Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290874A00
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 23:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656113212;
	h=To:Subject:From:Message-Id:Date;
	bh=XZq1GFlmJ9Us/r8rTp33IS3ClBJ6wTtiIfTxO4WTTRQ=;
	b=Z72MXb8+XKiZE6o8+qCUtEAtfOaGQjj6n6LeZiCFAHa7eR/FT12DGd0RosKVKRzs
	GPbe4D4uJ+MA8gM+zUL2tU8l/4ZCFXyL2chUMvCRzOUaGnKR20BUlUDPmLHlMNjMEKs
	DhNF+8UMXyHJ/U2J6jve+dfdfCjLqUgUDa+YNbK0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656113212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XZq1GFlmJ9Us/r8rTp33IS3ClBJ6wTtiIfTxO4WTTRQ=;
	b=epH8Xa6RNyp7RUQ6k20Zn28EJHlBrJiOCy3oxgxjtqa9adSPs3zySexKUHzjkLQQ
	HMOuvKcv8hvxrytQgFGQrMDSZ/ylGmTwECjzmc4GNGOLxW7Af7TdMdH5bS5SqtTRRjp
	FFIiyovkxqreGEyLyPw/0QUf1Oqs5NVyWeGy+bEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181980a2bbe-b44d3232-9cb3-4b43-ad41-e2f2ae64ea28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2719c3a03ce16add03b734fe3de41ea6435a504ca40dd95460250366de8339d4
Date: Fri, 24 Jun 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656113212
