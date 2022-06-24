Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4D5F1FC8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 02:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656038812;
	h=To:Subject:From:Message-Id:Date;
	bh=WOTkdOLFcdgk5G9TDrxbcrpigeiGh6uKu8EBPAo7pQc=;
	b=lVAgv0uTYUgl4buiqgBvUK0XXi7G6uLkgoErTPTQxoLV/dC2/tztci1wONmeHe5w
	iz89E9SHGwTYoaz9MQmfv7vqm7bGeNsKBsjG2Pat3CA6IsFpMAy+V161wRy33RN444O
	aQfbCE8HzqW7TL8rPeiXTXEsUi41Zxd6FB2axrws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656038812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WOTkdOLFcdgk5G9TDrxbcrpigeiGh6uKu8EBPAo7pQc=;
	b=XVYISdaQbYGiLwIriEp6MVKM+WMaMWefMgJ5qM46EPgx53cgMvC0jnfdtkujtiGF
	kp00WE2g+kBmUlfpe4hdwECo51ypxvq3gJmsxjbQtyELwLnesd7OPx8WheedSoLYKS2
	+5jiMZlJ2wx2oHfzJxeMomnXakJDX9mO8ia7TSoI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181939aeaaf-ce4d07ca-4a57-47e8-a932-7f49f41d9e08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a6ed9053fd422fbe37e450586ca9ce9be16c316b0c3d9b45b7c8896f3eeb12c
Date: Fri, 24 Jun 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656038812
