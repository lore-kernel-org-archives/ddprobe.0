Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677197B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 14:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655563619;
	h=To:Subject:From:Message-Id:Date;
	bh=E+dkLlj5IZQtA3YoXPkJm7NOMJ1kMnEu0tAYjxEDPAs=;
	b=bfeO5aXgszWNPWsTr6VUMS0S6yX22atHEvGL/CFJjYQ5bqd2OAQGyqT4a7AJxoy8
	/EN7R/XKzetv/TVQByzs29pTI0Ny3nmJSESnAO6k1pQSbyMdiv8zi89dmV30CeSUxf8
	9n349pY6zc+ViozWaVfDlnmnPUvGivAy0V8Ei0Aw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655563619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E+dkLlj5IZQtA3YoXPkJm7NOMJ1kMnEu0tAYjxEDPAs=;
	b=djPyG34En6f+ljhkThhtygGdZS0U2k9U24l6fM3UQaTMks05ACYbhpYBmLZedXTd
	IbpCMzI0ksuPtyJbYOn3//7O1/A/wDCqly6C3RX5vwOrN0XqaJJCyxUAZcIKEhp/tam
	cbf1eyteCp6MlxvoJ4Wvd2VyQSUG3JN3oUqvNjzI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018177480b88-f38edc74-bdb0-42c3-8675-b7be66078802-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35581042c412a65a289f6f8498500e3eeffeca4d76c7682e96ad19fa1ed4f38e
Date: Sat, 18 Jun 2022 14:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655563618
