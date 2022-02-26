Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BEAB7B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 19:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645902084;
	h=To:Subject:From:Message-Id:Date;
	bh=gQk2AV/+oMbKYt95fwe6MMqdDzT4B8s2DUykE7q5uaA=;
	b=mqiRTamefB9kSMYeQYfBO2YIFC6aTPKx0AQ7/6azRxBIG05eS6uKOSj32SwRdnPE
	oW66EUEZw7it+zAxHSKk1YQubOqCSNYQ83zBHMG6EP4qGKr0RqJGtj0/uKBQ1Wcpklp
	fZKzQFvPSPrpd5ICnpSl28apAUulk/D+/pgKKHwI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645902084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gQk2AV/+oMbKYt95fwe6MMqdDzT4B8s2DUykE7q5uaA=;
	b=USrfFTbBH0kx2xOJYXTX2Rny6kofPx0yQBi7vG8OmSwDS5fSnuGMhlQBHoyFUMjp
	bGTExudmW/tkdglynTTm5OLImGXFZw6dmWpmeriuzkC7YKn8IpbmuaiY65a3e6skuIg
	ZHF/886ge9gvnBIadrlDgpIeUBs+UuOqrTfiC6f0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3768bab0-4be61f0d-0603-4ffd-aa4e-4702c15d456c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f245c227372bdadc6b5babfb41fd77148a628b36af9da0d28d69579a57d7e495
Date: Sat, 26 Feb 2022 19:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645902084
