Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F727B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 18:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657391812;
	h=To:Subject:From:Message-Id:Date;
	bh=gjzVL92CYne79ETKfE9TBLIlHKg/2OlOB+bn9rH2vic=;
	b=LyCRBHJE6wD6odyJBSWN8Aqubh9ehSq72ZHrIS5AEmSzjplStpHI6xXiTeLU6Fvc
	ouUT8nkT2ZaXZ+/qxL2sMFxKviOqWUVIH7KbrvK/IdYhgr9ZURIHRKH1la2FFYFx3U2
	5yzR+BEEA6OQ7uWdHI2/wb8c1Vp41c82sM9ryApI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657391812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gjzVL92CYne79ETKfE9TBLIlHKg/2OlOB+bn9rH2vic=;
	b=UCqz/iGvUCMgMXYOKJs35wsdPo2FMseJbkSGHWn1Hf5BZYEmDYlwgfo9beacgGgz
	Wep5TxAbML/FhIOboK3RubDytqCk/s7K7NLNGRwik+Q8Ov/TTIPY33ML1GtGdQIR4+n
	x8nx37xqfA3RbDMI4gJAH5ftOKy8Ev8qvE2X7QmY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e4400f0e-51d61039-afa9-4cf0-8d2f-f3efab3c245b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f7871d0190ef305f97e690f9086c56bb4f5674ee4478d0a81b564331d093644
Date: Sat, 9 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657391812
