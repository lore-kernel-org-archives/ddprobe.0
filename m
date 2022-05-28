Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B671FCD
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 03:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653707519;
	h=To:Subject:From:Message-Id:Date;
	bh=h3/KkI9khgnTzp6pcz7hrwkPPRuyZUl0Q8Fx3jDzD08=;
	b=JJH/lESbR/sYbYCpd2bcNDLIy/belrg5YkK5HC9jvJcSdK04nR+fkzOv2mAOG/TP
	1PXsglZGnjWdlz3FJ2zu+u6Nmnsk7vFYXWcjBGDfbNRMsyiPpxZ+sMM7bPXDlERAFjD
	sYPGGl3Ih/Cpg26XrsU5JPfY5sXvKxlOvrrUetU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653707519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h3/KkI9khgnTzp6pcz7hrwkPPRuyZUl0Q8Fx3jDzD08=;
	b=Uqa6S8If8fQmpyjT5a1MmENWSXvQ4B3NkD2PgQwVJayLNdWTZnLNmPxskJV0of6G
	za6oyTYnsqL0S/3zUi2bVVpKRT30XExf4y9oBJ2iWz8WM9m96On9tPbRxsyNL9OKo1c
	nIZtBe5W7KlM5acTViDInb8SNCkYuvMZ1E/+F41w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018108a6354a-6a303dce-7a9a-4b5d-86b2-a3cebc6ebca1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90912c5ade2fcd8025ffb8436b4bb991b12514a945a2e5d43d61c1bddcf654b7
Date: Sat, 28 May 2022 03:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653707519
