Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9608A650
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659589253;
	h=To:Subject:From:Message-Id:Date;
	bh=7YZmo9m3b3uwmwY2QQyHdMXSJviTIhtiRD5x3JtYcXY=;
	b=QJi30d99maBSojg+YqDePWDCMwym0oe5FQdJsHujvtY1y4xNnTmWiVfH0WlQfJaP
	BV5DmuJ1WeK8G0mYTFgEijyLp3iVruP/qXQobGOZRCPvUEJ6lwFBq0ceHBDQyuNH7IN
	P+uFCxjyhyRTtZYma5AzJ5MOi5N7P/QbZ/MfegdA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659589253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7YZmo9m3b3uwmwY2QQyHdMXSJviTIhtiRD5x3JtYcXY=;
	b=Y5wevcGsfcanSwWcxTc5s3mlVS3pgGkhbDJGbNJUX+yXW/Tzlb774+U0MQ5auhv+
	RihdH7GIMsxx+Ux67bI3rAid6UDGlnIuRY2Map4W3GHiTZ0EPE1ek7mCS2B5uoH/j4/
	tu5UKfO3IL4/5Q7ImYHK4SRLh8MrwuuO4reEH3KU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182673a5626-8b74b442-e602-4bb4-bfe5-a82dd8c8f4ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6fe04af0dc043d5f06aec275db01b0843cb3e74573ec11a9639164cd6244839
Date: Thu, 4 Aug 2022 05:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659589252
