Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD0E46BA
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 10:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651313578;
	h=To:Subject:From:Message-Id:Date;
	bh=j7yaF2+uPCr6xkZuL6U5k2hNxZyHZHZio47hUmWnP4Y=;
	b=WYZonwcBP5VZni7JNHLuNcSSnKKsND3axrtnaxb7dJ3fpDVEwo4P+vwgpefablve
	J+20iZrk24bVAs6/CF9FFgAutjFm8QZNzjdRfeQkLIDZZftZz7oyfiNo9/LYiIUgkfs
	DdDhwY5ZsZBWCBAZd3i/wYBKNGcq44Isv9WbtoQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651313578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j7yaF2+uPCr6xkZuL6U5k2hNxZyHZHZio47hUmWnP4Y=;
	b=YMTe28uWgo9jE/u1jxKKhZ/vhwI8H8MuNcIS306STleH1ajUfNN6GJ1mTCTeTDGS
	QhKVGBhLRHok5TFYVNRgnXZe8mjr+pUbSZ2WI55/qSTzpgXibWSftp01KtO0MJ8jeBu
	/3oH5HRS17jNiVabV2Dr0Wn+3cm9TOJkxkKRIYGk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018079f5912c-14483ed0-0e18-4102-8490-e23f360232cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fe5dbf3155e5900a5c089b7cbf47ecdcb242ecedaaaa63f953523cb420242bb
Date: Sat, 30 Apr 2022 10:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651313578
