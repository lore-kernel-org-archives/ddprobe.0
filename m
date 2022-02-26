Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 927B83B3C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645881385;
	h=To:Subject:From:Message-Id:Date;
	bh=yYLcFauNc+p6a1CeNAcUoyyADMU/TTtDghmnw/v3AC4=;
	b=lzpfDw6LUh+r3/ifmcHm2iQvfRIhM85mODMfIOskMvzipaSD3OLt+Fctu+eeUJU2
	aHbvtCIUebf5t4+Uon/yPy1VDUIFFNGFjmC6vE3WQlb+rZb4579FHN88IV7D6QVbZKN
	qgLgYv9tHnfQxjwdlyu4lQvc9wjYNEtTSnh64N7E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645881385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yYLcFauNc+p6a1CeNAcUoyyADMU/TTtDghmnw/v3AC4=;
	b=eWGyuvkRTrco7J3a/GGyNo6aM0JLC1fWvgT4x5e0MnQ2SqtvO+d3KBpL5zSrEY6d
	0NHexK4NiFQcwnykpA1ez0OhzjwBCxjA8zPik+0upzlmVcf62X7Fh1aAhf4Mw//rT7j
	fVdB4wPKNgSvl4KxRiOg2kETk/7aq4hze7/XSsVM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f362cdf68-af910cd6-698c-41d7-96bb-f637f6727b86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcd1dd3453db06cd0daa20a899b1fee433b6b6138657edabf0f79d53a8e3657e
Date: Sat, 26 Feb 2022 13:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645881384
