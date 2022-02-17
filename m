Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C38528E4
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645074384;
	h=To:Subject:From:Message-Id:Date;
	bh=cGIEeHBghKS0gMPEryHkfQDcsk0m/Kvc5dNI5hZ0cxU=;
	b=gPc19SSO4+C2R2/uEaGnCRmlsOvGCV/J/Wv9/1Znf+fBxq23RqOj0W2yAphzfkNf
	H9nQmuK2jz/OmQnK/SnX7Vo0D8lpIqL1mCd4PYgLJMlEmEX1jj2QufaMHe5UImKHl6u
	tk+tUzN2PQQm0ck2UskT4qYv7BcKlW1zeqfOeDYM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645074384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cGIEeHBghKS0gMPEryHkfQDcsk0m/Kvc5dNI5hZ0cxU=;
	b=DqgK7LE/pOzklQKjDBNeZVco/6KBpKE2TiK6AgVAIGzDHou92AYqYQOI714DRT85
	ZwprUih5lUQOBTfPY1mEojMXW/NRsl+Jt5N0kbPI1cUnnm0DF2g7/tEhDktAbvZmg2z
	gQnnud1LCz5miSQBWhHSPwiKGv0GnJjmc3uaEH9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f061307c4-49b597b8-ffa0-4645-a00b-28f6e9b8da46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd62c8e695e20f11b440a7294b9ee55ee78e03baed44026732797b9dc2d1d0a2
Date: Thu, 17 Feb 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645074384
