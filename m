Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9613C1E
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 16:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656692812;
	h=To:Subject:From:Message-Id:Date;
	bh=7O0Yifr7XvISbXLndTPYsNdwTn0LDw4TBV5BXtfhKIY=;
	b=YVnllzWJA6DoMt0IqUZXn2wWJO9BB4Zf055oDB2dggrVpiya8UPKLeTbOnzh4C0j
	LNXtNTlP3A91IhkyA1yTNsBhRTkndRD2v2UCloBKi4VYA4AJMlgvJNME5r8dU9FyEdJ
	gicLxXW/gdO+BqwaHcKK+DWO5Ogj3o3+wJQvKzLw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656692812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7O0Yifr7XvISbXLndTPYsNdwTn0LDw4TBV5BXtfhKIY=;
	b=AdwC5fbprmOQ/XE4yLD5GfRrtbbAs3EgjXSCfEX+wyVKIhpFD54WY3/MrdRGh3yf
	DKVQSen9KDAV0jrQP86YpNxsVMKWxFpTdtRWkQewbiRIDOm7BALFglIIwm4kpYdAs60
	yjZm72hjqdzkt+kQr0SfPs4OsLEM08HjH4CEsUUE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ba962a0a-b834fe63-91a6-409d-adb7-433a7e54acab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2dfa6a0d9a0c50fe176e0e5d275f603bd5bcabefab1ad0edf2f11a3f43020fac
Date: Fri, 1 Jul 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656692812
