Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5953D2F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 10:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645956084;
	h=To:Subject:From:Message-Id:Date;
	bh=WSKkXu0TQWvLTsDiwdHuzG0udV72DBttT5Yywu5xO8Q=;
	b=b0XHgauAzNVmTB49d5yg4dkSTKz1GDYlmE0Vlv3nNB50/t26RLCh4RC1gXZ27H2k
	UXE+cnyvvNpjcw4rUUQCqHHSqU/xP3A0VCMFdHQbRw4rAHkdTc32DeFJbR1GhckBA+T
	GhsXO7TFuW+DSb3pH7umEhPef+2wLJm3RvA0BA6g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645956084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WSKkXu0TQWvLTsDiwdHuzG0udV72DBttT5Yywu5xO8Q=;
	b=aka5iTD1huTeAjR3c4Op8bEoL1BHarsAtVuntERwVFxiqQfFCqbGGmwDMTEDzQu4
	uEZID7tiS7SVidR99lzTzP3ZYJvit76WSDzX8ZgTHU1rQBPparfHQx8Hb5prLgYn2Eb
	jL+eXmtL2ycNMPti7tBFDon6JqscdlxDWPQC4ZuE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3aa0b3e4-cc0c993d-4e94-4a5b-a167-7fc30aaa127a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30805784f6b105e83f04a9c317fd9cddadfcbd1728ccf02ffee136d4c122e842
Date: Sun, 27 Feb 2022 10:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645956084
