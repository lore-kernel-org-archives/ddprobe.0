Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA8C17C9
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 00:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650070738;
	h=To:Subject:From:Message-Id:Date;
	bh=76xgeX7lPXyVfAhHz8L1AkDwDLSas1nchNNO3wg/3nI=;
	b=hZTomKbZg3mapCVkThlU34Z7c/Q3Jt0mzwPhGVMxsIYJo2eSspRH5fBMkLcsEc9x
	gOceveIUp/x7IYb51rNHrCOKHzwTrkGU44cRB2Ic+cw5v+CeNVLpu0REhYuy8GjvqZk
	PEAYqU9oPHAxhGl0790GUCapOWASDWDqRZ+DiOuw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650070738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=76xgeX7lPXyVfAhHz8L1AkDwDLSas1nchNNO3wg/3nI=;
	b=JHSP0zrTaWmety0f8VhiAOu+9VX4VbD4gpPGtcKtYs7S+KmzkPoFwosiY1yxECXW
	flWiLIdNGcn0XviUiy4Y99haayECFJBD2AqqjaODN2g/BmrDy7Tz+Kq+8FjNIr9kNSq
	VkOZULxJJQSbQJIGPERiDFlQzfObSGU/XpzYbWGU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802fe15564-2d7af4a5-440d-4ed4-b335-45f70697f3d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5249b27419ab67024616dc6ccbfba355f99186d8650a9caa51b29709d2f5a7af
Date: Sat, 16 Apr 2022 00:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650070738
