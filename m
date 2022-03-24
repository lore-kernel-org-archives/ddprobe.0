Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25E57A
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 06:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648103578;
	h=To:Subject:From:Message-Id:Date;
	bh=1EURWm72gOUvd0+YjjpnnyD7qRQVuK//08eFfrnm9Is=;
	b=MKnmjo6FvIiF8RXjG1zivCTD0ONoYc4aQZPZUicldH2kB5GJsEqgHruwQTB9norn
	/8f9UR1brxs1zTgj/BwNXphC7aeC1um7j/C6UvYx1zyy4DAVOd5zYcGKWJCze517DMW
	Enqj599k8oSEO1IrYODYfazM96miHWnlGR9XmDFo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648103578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1EURWm72gOUvd0+YjjpnnyD7qRQVuK//08eFfrnm9Is=;
	b=gGA6mA+bn2EpIFmr6zqvT+ZyxqKpbR0KUTnd45wb8yJzRQfifAAlCySZXZT60wm4
	SMEk/MIURXyw7hCVMd+/7chLIAtDf2Xfa763HIZVfqqIwo3k49P0/YEy5cjcT1TvoEi
	ZtQOen4bG9ZrTzec66khytAao0/9okrT8selQk+g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbaa0da8d-c0637035-bbab-454f-a37d-b730f0c118d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f89c443f72ec58bcb1c7863c053e05a40936a60b087487f272edb39cdce53c8
Date: Thu, 24 Mar 2022 06:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648103578
