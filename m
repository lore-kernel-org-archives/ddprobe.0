Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6617C
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 23:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653693539;
	h=To:Subject:From:Message-Id:Date;
	bh=K5oI3h6cmivUni2Il8faslYkkVvQrMpTEOhwabFZ0s4=;
	b=GBhRP9gpEsjm+8pa3dkfNQq+NJpxDIgvZCpdOP22I6llPsFmo/XWcEINKuUaMMCn
	clMOQDSKBKpho4I/vCHjZmuhbIhwr3ofreciErvu7mpOeMNKWcuicTHrdoh3qsHBZrN
	Paj1uRhf4WUvTnnhWCx4aRRSBoKA7K6/kQzdfnog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653693539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K5oI3h6cmivUni2Il8faslYkkVvQrMpTEOhwabFZ0s4=;
	b=dWEgekIvDEoL1GqH0QNN6tyM6FSMq/6Y1TvxLbIhrpzTvYKBg7kHJ9YB64uCx/9b
	cCwMSdAGeO9er9ruyp+/XPa8+FW+sMy9QXyjYtG4dXQ0b9TvYt6jdAqcrTRTSesJq7l
	8lGqsv/AoYni940L/gz52Zu2Yyk2bsBXWMKy1H9o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018107d0e41a-f4572d9a-eb0c-4d67-8271-318fcf4f775c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d12dde4de56ba849523c76f776074e8c550f422c42e989076ab994595c2bdf79
Date: Fri, 27 May 2022 23:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653693539
