Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A348B7C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 18:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655057160;
	h=To:Subject:From:Message-Id:Date;
	bh=SX4CWh264Bfjw2vQCrwZjw/fVQEsvWt2+xamAzXej8Y=;
	b=RIWqKMyFfy2dcwwTPDA3VJduMRLmia8jia96piSWQ1+jhhEaB2LWmhGhnlT4iD1J
	ZKwyT8PruIOKg6rKV/cmjMhgL2zNyW6YNCtKt31v3nq10ABG7OM6e2dyjRx7b/wtwCo
	vZRmO1i2wEI07TZsUkfKX5zUABd9BrCBSc8+IK40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655057160;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SX4CWh264Bfjw2vQCrwZjw/fVQEsvWt2+xamAzXej8Y=;
	b=V2kzUhqKchcwCDHXfCXM6q/t1AywbVqLiVxH+ngzC/z3QLb2JNcnxXY40gLD2NZE
	N9MOznkX7iJUhTHN8obckGhpavV1NfMXdKn+uJ/Dd4JKGT7ZZMQ883g+FvrKEEREjKk
	LHX5NZsxnoDM780OBsa2DCVXVGl+d5RIIRikaLi0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815918150c-f1851930-a8d3-4645-ae28-d162df139e97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a78b38d3d096debafc28cca276ac1a20a486139c5e48ea3017c9ca5c97d92134
Date: Sun, 12 Jun 2022 18:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655057159
