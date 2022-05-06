Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D7D620
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 04:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651811338;
	h=To:Subject:From:Message-Id:Date;
	bh=XFQi+qCKaOWg/rZNcbYse7iJJwvJYai/EsakO2ZKjfA=;
	b=cYGQ1WfF5ucHez1c60MVdHy7Id1MxWJdTa3HQx7LZmjKdjwhllYVGR7mvug/F/sf
	Sbd5LOe93kCEiYWsozAkaTbQdGXdDXv8BD1JgKSbPaztL/Vctaf8MX4PwDFZOSFHZpx
	a+CCvEiXM0e5Qamj0Eq6qWvsed5mpLIJRHmVRtL8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651811338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XFQi+qCKaOWg/rZNcbYse7iJJwvJYai/EsakO2ZKjfA=;
	b=aiD1iJvrH2dWEhZFYdyyGkbvu/pGI5ijti7fiFEOe9ks/aHa9CAUUgfIQXmWHCBl
	PMMrLN5K/M4N3G/mKdnVMqAgd0yeTu1VpcXtBCrnx39mYtweFVVczJORrIXnI/MbsfC
	daYhb/p1Cl9qsdrVW3qUFA7bOBEzNMqVDfPVujsk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018097a0c815-1de7ece6-7141-4458-a26c-579dac027e0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3170e906b0ffa3d115d0859d5ebdd732ef009cdf108a50e6783eb40dd600eed1
Date: Fri, 6 May 2022 04:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651811338
