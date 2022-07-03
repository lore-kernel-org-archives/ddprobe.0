Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548C21FD1
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 07:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656833212;
	h=To:Subject:From:Message-Id:Date;
	bh=ZI/BZ4Zg6o8LbKcN3d7vPGQkvfdt63t7Ut5/v1luRIg=;
	b=T7FtKestLJaczqPrbHO0K5xoPwLiG7ghDmfXWmHS8O39A49Li4h0fZtSGdDfi0cF
	UskJXLbULyEheAGD4iHavO1R5UyCgTvtHj2pwbTmjH0iVVP9+8ZAw2voiwwZx2+NlQs
	vm/gfhK3RLqKOhrQDK6SZ1MRG98gAhE8cOtHxcAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656833212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZI/BZ4Zg6o8LbKcN3d7vPGQkvfdt63t7Ut5/v1luRIg=;
	b=c9f2RRf7AhBqGV7fRnBQaCpFNPCEkZ95VhPldyZfrJ2r0/uY1vYMjwuBusoMlBpV
	s49phDWlMgGHpjBPSgcTJaTqFzBbGbK/Lc9iIJgpwtOJT1+xpM6llQMnygHirm3NYKL
	5VM91/fN/k3J7OVayhDqqAfqsEplZzRCe2kiiGSo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c2f47ff7-b3ef106c-900b-4896-bbbd-bd53b7fe37f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 408935b3435808db25baaa869bc5356e3e2ebf6e12bc07514f70f69bf464fb6a
Date: Sun, 3 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656833212
