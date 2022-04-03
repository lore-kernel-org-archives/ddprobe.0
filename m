Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5AA23B2
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 21:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649021878;
	h=To:Subject:From:Message-Id:Date;
	bh=wdtBFdiLRzNSgYwmoHD2BU22aCvQvoAqL5MWVwcuZ7k=;
	b=JfVdbfXrmSDiwGS2I6b7VzOzw3Ngl5iLv1EDF8ZldXTLEn750+OFqC0dFL1L6ILh
	f+MAnovF+tthsZA9CiMWJp4IGkZ9n1qNBop7UGKSh8lFFgJY61bmNA7ennP4efFOoE5
	og+Zxd/EKu+HYZR9cpub5HwDQbkh5Zhyw6ipl3F4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649021878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wdtBFdiLRzNSgYwmoHD2BU22aCvQvoAqL5MWVwcuZ7k=;
	b=bLy5IHw9LYaQcHFbEztLLW2jnp37W3x5459Bg7PAQ5fQeCHU3v3egQ7qty4/ZopC
	ZFSGyLlaJ0mVnfF/ZhRKnQ5mKic0eWXXYBIPyMCuw81LX5kRUayUbWS4bDPWkiPGON0
	rfYf1cV/mb+UqYtvDOD+lQVkzCtKAqsRL6AuNvbw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff15cfff9-2038029f-fc62-4f9b-bac0-f514068ae059-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aaa53e0d8679671a777c0a97864dea0134aeddcbb3bf71e2b423478512c99317
Date: Sun, 3 Apr 2022 21:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649021878
