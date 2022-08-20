Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5476101
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660992052;
	h=To:Subject:From:Message-Id:Date;
	bh=8UbX+PR6OlkW42CTPcnkTj3GcgQXm272KxIblIVZitg=;
	b=GpNyh0P3DYj28vxT9TRLmuDPIlKy6xOKu3oo+gHjEK8hbuOQ+Q4RUN9uTYRb/tyk
	h9borWLthfIm87aGw+N52El0VorS9+iBl8fIrM6LU9ZBwtluusNdpsucfOgD3nPtz7i
	PflWOiZthEA8BnHhs7tqAnCaB0Vx3dZFgYVS3xmY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660992052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8UbX+PR6OlkW42CTPcnkTj3GcgQXm272KxIblIVZitg=;
	b=gYBdK0LNP+wkJqF9d5HrsXfH0KAmyAD7AkSyV7NCFr7qd1YCfFodZ8B8R9xOpNWu
	gJOPimUB/ljAPVYYJkb23oJDD9mGSInBsDKu14iO8DfoXFefAEZyvK7Hv1rJGf9xjTZ
	lt2+4fpze7AjaSVfJhCujdCTkuzEf1sNvj+mngqk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bad75d54-ffb53bcc-8101-4ead-a92a-1b56966e7c29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfe462474cbac076ee6685ebf7b967a1f0493e1b2ec369300f26ebdabd92d8fe
Date: Sat, 20 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660992052
