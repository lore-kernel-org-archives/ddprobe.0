Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75EE11366
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647238585;
	h=To:Subject:From:Message-Id:Date;
	bh=tHJ/lwBVF2LEMT3r2UdYN924YBOcgMW8hxcAa/b58qQ=;
	b=FLTsUdLxy0bEQ3GoSrdQFxAPm8iiJrGOuTfrK6ZesqQo7pHFyZ9PeOwi5JhIe8Op
	AoBTV3gWJVrwuqsPB5+fiEEHKzLDw7EMbd35ZrbThHv/05w03sT7N9wpepvdCVka70h
	aqiUgqAyC655ZtwICXMdVNJdDijIjlaukI4kvFtk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647238585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tHJ/lwBVF2LEMT3r2UdYN924YBOcgMW8hxcAa/b58qQ=;
	b=SzdIJmikuOi88udo7wBdz5QcCrezhL46bcyc8T8JbA+UCleuH/YtXmZhEWTgvJrF
	MqdjdsiS045ssufpSysGhxR8x9CbUr82J2zakNGWHoXW7Pn7EkDNR6mz7i7ms8xbKhR
	h59l/v30BeAvMQYyGmEti7rO6ZoKRc6zcJG6TJjM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f871219a4-33ac7227-7e6e-422c-873a-3bc0d7c4164b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64df81c8f9df2cfd2a9dd1b2bfcc53045ca87c8b98c452621ece600a2a61e5b5
Date: Mon, 14 Mar 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647238584
