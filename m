Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC36C3FE4
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658693212;
	h=To:Subject:From:Message-Id:Date;
	bh=j+yXxnF+j6agstTEfv/rKxDQRd2n5lQdv0xvxZuT1us=;
	b=ECA+VzIMmgrYNbam9xTGQjut1vRNVK4OOhYYw52itIWCaXTJ6k5qnPVYP2uPv+d4
	5gz+314II7hWZN0Ad+BjOQSF+GSo9gZtqwHTiT03mEkgb53x8v+ETcBE4qm8oK3ISrH
	All/mHSGODvL6IQYWrVHuEL4W5wRs/Hjxz8Cda5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658693212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j+yXxnF+j6agstTEfv/rKxDQRd2n5lQdv0xvxZuT1us=;
	b=BjyXj5x/mPd2UTkYWhdn3Bo/Gpm7V7nEEa/P8xN3z+A0P6vyL5CQtZXM0bjgKT4d
	ESu7qoMrXhEvSDRRyx7LYB3FIzK28eOfZ/aYCjPHfcIgZWQtH8QoxpcLVstHiXl+ANu
	RdbSaT64qGTjDy0bC5PDkrhkh7us4T99k+a0XH3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018231d1d898-4e839863-1de3-4cff-9faa-3c33aa45aae8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d41d5b869006aefa27fa0039fe94a9dcbb7637c8dd872a70db0a1272f321cf5f
Date: Sun, 24 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658693212
