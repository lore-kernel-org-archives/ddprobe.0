Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FFEE2579
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658844053;
	h=To:Subject:From:Message-Id:Date;
	bh=rY+mJd1Klog/I6soJLghKIgGdzgIeg1QVBEMkKOQ0xA=;
	b=LbgHz1Gk1ZTL8Sb8x9rYYB+vhYXfnfC+qXdxTtFxrKGnv0KlxJLYpAEqGR9tyRPP
	jyr+hj+nTIJhdtSXay6RvjRG6vNH9yKCP6I0YSgcGUkCH9lZxtSjSYC6awue2BJYmVi
	4I+c/ZP/Y21OVRHb4bBYJVgbFuePSm507URyufj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658844053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rY+mJd1Klog/I6soJLghKIgGdzgIeg1QVBEMkKOQ0xA=;
	b=KVzSSeFbTzFU6Umfw8xlJe8HJ0u4cRldyqjnoHrzK++ZhyLK/0ToeYkgR4p5MBvB
	XtgneUaCiMeBUWe1QJoJVwekuCfGPtvkqWPGVqUZfFNSJ8ETscR7REjIVerjzS0flz5
	ATFVCkyis5e5dow7BeIOV/8oj9uEVnvmozWWUtSs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823acf7c52-ca6c2fa5-428d-4079-862d-e36ca5d6f5f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f3eb84bd789bde252f59446eb93ca1a515df8af6b51032908e9e0e12c7d125d
Date: Tue, 26 Jul 2022 14:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658844052
