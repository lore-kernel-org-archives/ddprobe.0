Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496A2638
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 12:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657973212;
	h=To:Subject:From:Message-Id:Date;
	bh=iOC2btvhCWLtNowqje+HaH9N8+HCla7jwCF7IISIEl4=;
	b=k/rEAzj1R2UYJGxcH2VeIbNl8tSTjuPM/l8YIXIocrHMQPz/wpyEuSZOVGGMJ7D9
	0aTvswrJ2e4HXI/jdSOrlzlt5v7Ltart7+HNQqwmGrY6sf4gUUUochcRpAYXxuTZFNj
	cnm68US4tVDF3dMprX2xaxLTruhwxOVv099f5Q64=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657973212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iOC2btvhCWLtNowqje+HaH9N8+HCla7jwCF7IISIEl4=;
	b=VLjY/uQr6CFGLD4PCCeOm5WvVISHbHcclb0wE62tD7sbBvME38Bzm0Wl+88Kq0jD
	8gUjP3BjEXJQpNefIcp5BORmrApg9psrWppNsqTEFRDjmph8k03BIFYoqoKEuggK6GD
	qOVikjKeKUmTVMUbBYK9OgxgM/SZ1YT+WWO6DU+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018206e7847f-6d0da383-8022-4bf7-96db-4e00e3ff9084-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ce8aedd601b85d93142724c65edc3e6e9f8a5472935e9322feb0c8bb05a8873
Date: Sat, 16 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657973212
