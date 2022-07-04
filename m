Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FB77E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 04:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656910612;
	h=To:Subject:From:Message-Id:Date;
	bh=dnpFrR79H7eJ2L+ciLu3Bga5PJI9VkBedvBNSqbKax8=;
	b=CDSmQwOe6GBmWwbaus2QwaUMVWt59UW+rDFnnuBNMtLJ+JncoAuv5YOxRWaFRRm9
	p8QVclOXOu/QIeIJaGp3RO2cQGhOEznswPD1xbK2WBIRCBoe6oLKHY+dpJhnGmozNZZ
	EfWf2fI8l2lsdk7s5P6QF/Saz5JhwLuG4ufBcsDg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656910612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dnpFrR79H7eJ2L+ciLu3Bga5PJI9VkBedvBNSqbKax8=;
	b=CuH/yHcDv9/skuy8RjrqBGGA+LxO21Ni3od9QJaZiUBmGRoKb6K8EtkJkb3NI1HF
	V+4B3xCZumNHpEDytOzCa7X0fYwk6yB8jaDgIb6Wg2nZTe9Q10aRTfjtuGmkZmtd6Vz
	DwqNyMUWVppAltGCPdI1hJxD4sF9kKdqbG6rl/58=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c7918783-c64cd3ac-583f-4007-ad17-3517bc22564e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6f0a3479b33f9c6543e87d9d5f09b090a4033562426b62732dfcc829f0b2484
Date: Mon, 4 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656910612
