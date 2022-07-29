Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350BF7A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659069652;
	h=To:Subject:From:Message-Id:Date;
	bh=dsWgp8d/4iujWcdi3yLYA1+Iff5xKVJM/ZqI9T0Uzc4=;
	b=RowOiLT84P3/BZZK+d7IDwMnd/WvSIepsQ0mPVO456XXavSP1WgIQjWbY/oiutca
	muqMVC+FXIdq6dMMeYrM/KWwagHex3XgWDrjbNqt0XV5EXo+8Al3jY6ypJD2rMn8ntN
	mw8crsWGtBRoL4jQaph2kEfLinLmxRBv4Fj0q300=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659069652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dsWgp8d/4iujWcdi3yLYA1+Iff5xKVJM/ZqI9T0Uzc4=;
	b=Lh7+a3kwPgQgUvb90r2BuHKgt/TNyOG5RFchaUuPDHeFM9afbnUSr1q6+TM5Wvps
	pr/6qpN9ozOYqePrN7PNzrGIF+1cjEmY8FaYFHMEjdlodM1GcVEug19JygtRljaqK2R
	+4d2B17KvRKXO2C4R7l9RQ6Y6x51kMNCdrseaY14=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824841de1f-714e83a8-d7da-4088-9825-5a953b653874-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f22138f88064657f13b2d87dd028dd550e958a466a75452b88d45abd05787a7b
Date: Fri, 29 Jul 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659069652
