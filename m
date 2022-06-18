Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3C97B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 05:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655528459;
	h=To:Subject:From:Message-Id:Date;
	bh=bs0ZYOHekgeBzPS9/W/SEkFaTrKVSyI9LK6Tm6kHDUg=;
	b=QNxk+eZRSL/Cpp6yF9g4uMMJ+rChpi7DugY+DOaTJVWijxSWl4WyknAxgf7hMIgB
	YG43/K2+GxmFkqumI6rcqI5I+ZuZvLfqquGYiG5+ktAFbcoHJxNTNJEDKblekoA12kZ
	7VGibt6YgOt9q2/YFVs20Rn9/pn+EdKu0LKPoQFI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655528459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bs0ZYOHekgeBzPS9/W/SEkFaTrKVSyI9LK6Tm6kHDUg=;
	b=Zro/VMPWwyf28Iccn++waVSjfZPjlzy1/WrbwjJzB2Rhv5E4EgGJ+qWO8rWzbGbA
	H+FvP9EXoEFkrMJ4/Ka7u9JkY9BjbFZ/ALiCv4w21cvynVxui3AMvSsav1TK7PlmFd/
	NFFeFy7WVeWkHZvia8bZlcnXDj73QEZ2dsznOw/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181752f8be4-19c531e4-6460-40fd-bbea-e250fa83705f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47665636d806c108a6824a92850bb7358bc62ba4646107afa577255b58cd8d41
Date: Sat, 18 Jun 2022 05:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655528459
