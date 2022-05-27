Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4751846A4
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 07:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653636479;
	h=To:Subject:From:Message-Id:Date;
	bh=TSZYZTem5qUZZbYggfdgTEA7UaybE/zGBHYR7kQcb8w=;
	b=dXN8z5Kwy+oRvbdoRSZBIFdYRNvPWFDeyKUleEHkGa4g0LOad1Z8eepK3/BowfRD
	dyKRCc2qRI00lpzGQ/fQhl7/6cM3AK1XZvN239O9YkQijm37gTCqyCdYrokNSImkk5d
	FFo5tgCVBMw/oS4qO2qecnbwLUy1riHmjF7O21rI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653636479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TSZYZTem5qUZZbYggfdgTEA7UaybE/zGBHYR7kQcb8w=;
	b=BGxVw5E+ogVsh5vSQiL/GEGqp304jMGtOP/n8XG3SWrqBQHAd/BQ5T1OlQ/Am9qb
	Dk0CYim8U4wfMHwTZz/TFL6JrmLkf2/7EI6HitAmjtKrM4kxvOPX7Avh8Fy/gB09Nqi
	fy8g33TUP15s77EKZBmphAz9fcq1SSFvWS9UhwAM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181046a3936-ca9ef66b-8101-46b0-96ae-a523b650593f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fa7789e7088457786640d65e6eefc5fdb9ee0de92933b66f948661aa58601f4
Date: Fri, 27 May 2022 07:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653636479
