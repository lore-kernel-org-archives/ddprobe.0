Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F0B15AB
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 03:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653880079;
	h=To:Subject:From:Message-Id:Date;
	bh=1SQfNpdm5SMA3i0V7YUhSLXTFGucjc0e+KnOkY885PE=;
	b=kllD+5rtAocTPMW4Vw0BHbw0Ti1+hvJ33J5pRYXHoZT+MIUMskbS13xDn3Uj225Q
	uItnzb0llMePg15WN0Mk4TuxizeeIG4kM/T/McNGxQNBGBDQyYWTKrXzqrjPs42QSgo
	yeEVOQ21URZZIm0sHzgMw8kQSwLHvSO0NTzc8Ch8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653880079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1SQfNpdm5SMA3i0V7YUhSLXTFGucjc0e+KnOkY885PE=;
	b=lFOVsnx2sDBSVaO17B6DoKPVGc/umgoPXLzMjwsmKh9sh4gJ/BGDp98J8/ZIFS/k
	JxrnOsQ7lxGUxK41ofmu1QbB3b8+d/gu1Y/4CqqormaopiUd7uPNRhdFfcWHu13ORs3
	XQy8512Ljx6HSwPgBws2wfQVT3lXSL7MxbyHGXN4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018112ef4405-edcda16f-8452-4519-8bfe-fd346383e6cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97cba1b4545c5047589a0f85150ad1c512051f508b64a9d404fe7746bc263167
Date: Mon, 30 May 2022 03:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653880079
