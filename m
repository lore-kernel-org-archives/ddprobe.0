Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B562F4D
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 21:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654636859;
	h=To:Subject:From:Message-Id:Date;
	bh=gmXllDW4Znp5HDtUlb3RQvkbM5voOzWxqkCnCeWyXHQ=;
	b=b+efLlCVUTttZrI1RvHleKcD9RLcljh69B6NREG1mE+qGEi67QQkWK1sPI6O8Y28
	/DI87c1NzomQb1wB2xyG7Gj7Kq+qjJe66/O4EU2+ef5FNG9LKugreFarsN69dP+3oL5
	Y2c4NQD0nVShML2bq5a6n3RBEQgib4mL0XgFpdQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654636859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gmXllDW4Znp5HDtUlb3RQvkbM5voOzWxqkCnCeWyXHQ=;
	b=GPh2RVO457paPriFw+QzZLz2izvVkCAgsAQvFfVAZeheQvW62HrDCzGdg3dLba6Z
	kxrgfwhA9bVmbTfx/jzO4kzXPHz0IQjxOiAToHGz41Aojs3iAzNUuc8I1G1YOXQeR3V
	cad9F5itkcEoZp3xxD4k/3Wpd2EVzo6s2xEBCKjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181400acfce-4f760f6d-145c-4211-9c67-ca8ba969c421-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b229c26b89e617d67bfcba8f2ae93e061cd06965a8d5dd6738eaf1dfc2a781fa
Date: Tue, 7 Jun 2022 21:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654636859
