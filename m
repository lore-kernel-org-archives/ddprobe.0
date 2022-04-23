Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961D03201
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 19:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650742499;
	h=To:Subject:From:Message-Id:Date;
	bh=me++xtm/js0HGsHi5QXZ3QUWwvm2WOE+3LvfLXXHsqo=;
	b=Avdd2s9Xdld9Htd1ExWnzRn5jbJpqi+OiG33WQiGrnOR1ELsZ+h34s7JatBGHbG4
	IT8IjaRxObgQLNH+adJz2hsJutNYTUzuQR/7sG2RUeXKtI+q/G+MoSviwNRffwBOCW1
	9fqwQHJLGGo68WM/ZWm6TVm3Pb6DpIhD+VfuNyrA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650742499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=me++xtm/js0HGsHi5QXZ3QUWwvm2WOE+3LvfLXXHsqo=;
	b=GPBkxdNTCmQ3WU/OYQXdgSxx4Cpaks3wdYEPF7GXmCyB7mWVr+SO9C7lqw3y3jUI
	K9JRZ2deSH1w/8ukrQdLDT2r8rujtbunVHX8xRa361PqLNzOs7TvkeqPptudpTtj3E0
	RXMLHuih4kboBeqI2aTlHYCEVjfLR3dB4XJakcz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018057eb93cc-9cbfe886-4060-47a7-ad93-390777186a89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 850aff9a022677ab282b39619a685df7061446e5ef635af925109442c0b4dce0
Date: Sat, 23 Apr 2022 19:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650742498
