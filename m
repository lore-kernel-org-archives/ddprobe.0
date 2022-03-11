Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88ED07E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 11:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646999784;
	h=To:Subject:From:Message-Id:Date;
	bh=1U4amsC7UwI9nhNTjsBN45ZfnoD0/h2mFMG9v92iX8Q=;
	b=Nd8zSzlu7Yj3I7QlB7rDMBnBFeZpR7LUJj3pO90FjMoZ9ZsUxLrZ2b3rgcn5KaZo
	ppocSgcnYsUQmlCKGYCaSVFPOEzSNWm24YhB1UaAB43S4pFSgDiwK+CSbSHP7yWLLxh
	0/B9l791jKFx2Xhqo96nljimp3tT8ni8vrYFG3/Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646999784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1U4amsC7UwI9nhNTjsBN45ZfnoD0/h2mFMG9v92iX8Q=;
	b=WBD2st+/H42eTjWx2s6gPkJqeR3JrnAPZ320U5FEwS02G8Y2LWu3KMjMaTymy4Tr
	EE74ZOkb0g4q4cnD7IoMlJk6xI3Ky4GEgAKXVBZ+XDb4/GsRFXngcQVXk9HM3m33CSl
	rTkgosgk2wdDJEGNOLcSlN840+GOTNfat83YHHv4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f78d64d34-db3a0a99-504a-4340-8374-3346f7bd848a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4f6511a39b1cd53df8c80bee1269f235693bbc7b40c738d644aad9c528ad9dd
Date: Fri, 11 Mar 2022 11:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646999784
