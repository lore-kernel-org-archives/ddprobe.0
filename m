Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BDE7B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660847452;
	h=To:Subject:From:Message-Id:Date;
	bh=hUfhqM/sUe3rvr303dXVrPvrLkll7qxGpwy77HfCI3g=;
	b=JFUwS+/IOtDgDZb6zhYWIzRvLX4rvMmw3gQVCeZluhxJUgYMxS6mZcyowfy8vTsB
	WWHE2qkOUmlZv9SPOUMtHL1QA0VeDm2wY2jbiRsjOyLr3gG4YWqT0p4rmJA5SsIwElJ
	cedC8tbH8QqWDQAwEjlDlWXYd7zGr9HduFntoyf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660847452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hUfhqM/sUe3rvr303dXVrPvrLkll7qxGpwy77HfCI3g=;
	b=jUlFJ9yRhkNKRp4Chla2Rai90vV9inp8XfQtoPLTalSYnOvrgCPFUlkMwiPjkJ/F
	sBFZvSiCjt3hvd8DCuVWck8fDcWYxGlqIl2nGVVrNRlaPHavPKFsO/qVZTub8iFK/M9
	Icior83JY9rN+PTD2tAQ5QWA+AgFGGXROJ2IKu3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b238f1c7-6dc8e1d0-4657-43f9-a684-422e91d37dce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67a85d4a924fad5434c106720edf9a156e7531852d36fedfec20b55e18959dd3
Date: Thu, 18 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660847452
