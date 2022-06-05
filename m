Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221954688
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 20:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654460219;
	h=To:Subject:From:Message-Id:Date;
	bh=9RSu65MfAABF/VPJnXcsp8Gdlr6fuiQb3g+pIZo3OEQ=;
	b=IVh0HONTGZ/sJFYJYbI9HwB/jsK8Zmf42nZE4WXgs5/Nw6w05wnpfDx4Uk7Wtry7
	1fwEDBnBVJhHqtCetFjaP7Jd8FzS57EMJQ3ToGjCeBRwHrTlilo/dMFkqT3yn79QN3B
	X4M+qJ7R+ttWn6SEZSdQ8/cdmn8SwGFJOU5SENJM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654460219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9RSu65MfAABF/VPJnXcsp8Gdlr6fuiQb3g+pIZo3OEQ=;
	b=NYhP+BGvij1rNpr56+7W/eZZsbbYpOyD0DTrZ+51shC1WL8t/fVevh0Rm2fGn2kO
	1EL0U0YUlwnJ65YKJFWsh5Coo/Aa/C9fxvi95phM+2NB+jnrNL3hf51tSkSfEX5psR0
	eHKoswqhWOE1Mxux1O7WFMx05+CWqtDtrgJArMzk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018135837fa8-85ff7373-fdc3-44e1-876f-673e06936233-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75c76bb7afbcfc3fc7f71b748625b0b07a340b3a3a7ca25e33c880ee792980d6
Date: Sun, 5 Jun 2022 20:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654460219
