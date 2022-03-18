Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF584C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647617785;
	h=To:Subject:From:Message-Id:Date;
	bh=KH84EunbDae12/dURSfW9esP1RhnmBlfHJwrNPq3PXo=;
	b=itBsY9HpHdIruI8Vqy2JqC28qFa2DcV7/zl/tktANRKL0R4+/ow7U3Iyo9HgSknV
	IuSy9BC8HPH9izdR/XcvVBOqnlQgiEFmNDaBjZANAeBWhI3vWrpqtT3Lr3fxkM1buNc
	UxC0c60kAVpaZ3M6VignT6O61/icQYBxU0hpBrlg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647617785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KH84EunbDae12/dURSfW9esP1RhnmBlfHJwrNPq3PXo=;
	b=hPpeJCmEE6EcIGfYYBSAiNLoIJU7Eefw65usy88hfT1XO3MXSiTcw4oyIpKP9nMF
	GdccswtwtFoTaNkWj7+aRSa5GI4wMzUYEs8hU2U04W82aK6AbzQrq/x+aQmXSaOLi6i
	0K6j/DS8RNVVp04REn8Gv5CXxfVeOVwbJSkwEd5w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9dac3c2f-e2a54399-7ecc-49a0-9f49-fbcabd471fc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 960e39e6d2295bf4205dfe6f7a66c2d1146dba867cbdf57d7fed99b58208d3f1
Date: Fri, 18 Mar 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647617784
