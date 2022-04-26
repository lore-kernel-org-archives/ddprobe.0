Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520EB33C3
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 21:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651008718;
	h=To:Subject:From:Message-Id:Date;
	bh=R64X3AQRDBRr3XyfEZF24nyu21kWoLWJctR93mtvY4g=;
	b=mWavbsAJqefgP/O7SrMJc364zTyIFVhWXJ5hDZqCFv9ksuLT1BZ8jFXyAfZOSO51
	NwpoucjJ2HRUyNql/at1C4NXOnVwlub8KOBlBQiGJQfHn1kbWxuENXYg2F5mO22+Ovf
	a+f8zU7jmIcRmQ2y42uJVo+MvJzihYClfY5evafU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651008718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R64X3AQRDBRr3XyfEZF24nyu21kWoLWJctR93mtvY4g=;
	b=RJg+RDCww7KOd8AG4LaNI9iHdYutuSIb8oIpssxWOQoRTwRUvxsybe/iJoAanTSk
	GP+jUJvLmp/a8f6Q9+IhMmz9yzVcxFreu0/hdHpOSop9l9jjX1bWqDTFI0d8NZTsUi2
	bGRvtA+uqD3mtK3Lh39wM5+/0ixkvc9zFtTzsmCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018067c9c63d-7594ffe4-def9-4129-bcc7-da131bdd6141-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 113bf383a847294055a2d2de1aa5336b3eb50663bc13cfd22504287af85dd42d
Date: Tue, 26 Apr 2022 21:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651008718
