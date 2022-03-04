Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 811DC7A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 06:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646375185;
	h=To:Subject:From:Message-Id:Date;
	bh=c1m2aERmInW+/fWY4QxULl8RUdb+DcKYnGVIG+kwtYk=;
	b=Unso5f5m/RdIg/cU9HNjw0yHVa9rLDCj7UwL+Our3nhnbnzpAYpud5B3OtymHwD5
	wJ3M/+/usXkzlFIlZ+SxCwGfRIdzfKkmlEE4QkTvtpCUb2XOg6cSVM6HrSlbEBgyUAx
	JlC06Y26byD6fnUCYHt7D8SF6zQ8WU3oDpXSuJXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646375185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c1m2aERmInW+/fWY4QxULl8RUdb+DcKYnGVIG+kwtYk=;
	b=FGg7KXTZszWPy6N2tCIOQgteLWQxSAPVsZE9jGPxhDvIouxpf9jToAa81z2J4pQT
	IDlWczseMsBLm6+2HKISUR+WRRmUaqK/r2SO6NVvGdmJYGAhXiZ1+AggB+0zCEKuox5
	5WRsBMK6AFoQER3evKi7KojFV6iPcnu0a98lNCcc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f539ba9a6-83b2af72-d3f2-4e14-8a98-f8adacd7cc99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af37759fec9087f764dc6b280b4c849db3d44ffa56423c8d5a8d139ca4a338a1
Date: Fri, 4 Mar 2022 06:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646375184
