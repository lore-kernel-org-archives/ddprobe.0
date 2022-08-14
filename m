Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C01AA3F
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660454452;
	h=To:Subject:From:Message-Id:Date;
	bh=FHS/DtBxWW1c7r0TiCcFkWByXRsfMea0n3WF0ulhmtc=;
	b=JEFNbOyu2st3wbf8MCDLqkeu3KlCWGFGyNcMw5iqciamc/bffnIBQZ+eLIyazRWb
	nm/P1HSK5rw9Wde2xwCPnSMqg0FOiQNRKOP6FKu/lTWFIWBsL52QBqjeSUTa1J2XQX+
	gqtSYhVY0yDfjuNFgz8sJl83Im3vBuhwn884zyh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660454452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FHS/DtBxWW1c7r0TiCcFkWByXRsfMea0n3WF0ulhmtc=;
	b=HjtI14gWQGtG2jC1yshZa306RFOWC0b+gG/AMCWtfJBHUebedCCZ4mCEYh8GHS8m
	KlLdyjp3qFub5z6Om2URyk39WV7UpW6QuF78ZBjJiASP1Kw45DeaJPLzXjN8jYjg2vS
	+xSajjxqV+Au6+joppfJSRuKl3dxU1YS3HjbCvq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829acc3d85-1baf33bb-c7e4-46a8-9725-963146c5b22f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6677f6453da74daab7b8a59e0b57ce0f6c902eed0bb45e4b84a1a0d4538cf74e
Date: Sun, 14 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660454452
