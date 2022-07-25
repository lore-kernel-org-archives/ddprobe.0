Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EC24C61
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 21:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658783812;
	h=To:Subject:From:Message-Id:Date;
	bh=ZipIXJjveZJo6/TSvHW/t/lm40Opjd0J1TYMltSrn0U=;
	b=OzZk0eJ/LeK9lI25b9Nrt90GPLy1SlEN7dbITzFAbW8J/y/7ju6Bl818kIf4M2f1
	bpcGKI4x7L26ThM4ZMACV/MSB2i+pvF6nDbq0Qxs8bwz57LRGeJT+m0VhJlCn8UKRZP
	/yVB7TiVukafSg1cjtgxFwnDNYZpKuJbgaZBmrpo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658783812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZipIXJjveZJo6/TSvHW/t/lm40Opjd0J1TYMltSrn0U=;
	b=A6hAIzldzqm45nzHLwojtkwRMuvcWJ8yvWsXP5th5wzNaqt3KKbLpTTEY1Psd6Fl
	mU0XVQ8OKxhTYaMOc86AznOKpRjViv9Z2LdcSgqKC7jcBObOZDh/asXVNbnoApS1P7o
	vpuSsgs+vagczy7NssQYfuAGbaQf1/SX4t+uQlQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018237384aab-9a8ea032-88bc-4cb3-9cd0-2c99fb1626f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33a0cb6a2c05179debd74c71fc7f82931e48ec72d9e65934dd3f8ec1f25a161f
Date: Mon, 25 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658783812
