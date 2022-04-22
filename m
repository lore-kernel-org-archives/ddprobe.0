Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D815228E6
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 11:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650625918;
	h=To:Subject:From:Message-Id:Date;
	bh=XxXvQtixmoSprVAvpAhiRMQoUqGw5rm2z6FrKPpY474=;
	b=UAugeXqcXP/ZaUPkgO0h6N/B5zoBchIDStmDf6rmhnnlpxQm5WiDVEr/Ta20PkY5
	JsKkouxYHaRT1K1PLVrppbdKPalem0S/kAkOyXuMUnw7JwIVrUNFj1iatLaxqKeyV22
	DjOa/NAVbOJtKrdXr8ubh229p2HRuUYAWL23qAlE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650625918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XxXvQtixmoSprVAvpAhiRMQoUqGw5rm2z6FrKPpY474=;
	b=P/dbjgEP9lb5ZXQTM4Hsj920eaD+zUfiMT7zU1Q0j+0b2wKgypsAmMltmB5WxsBk
	pv9J+5tz3fUOVAXPYMV39zmU9VXKQDATUVM5PIicUV56vABbm9wvw7B1K9VbdIuBBUE
	XA8HFxwZj2GEV+8Qy+ny8yZFt6QzLW7A8az5X6kA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018050f8b504-f6417944-e904-47b0-a170-91b7338bde34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e310261c07a071cf8fc2e0c5a0c501c3e6b1312fb18ffb88d6cf3b64905e7531
Date: Fri, 22 Apr 2022 11:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650625918
