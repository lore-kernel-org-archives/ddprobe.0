Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C587D
	for <ddprobe@lists.linux.dev>; Fri, 11 Feb 2022 22:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644616826;
	h=To:Subject:From:Message-Id:Date;
	bh=PtXsxTBYrGqOcL4d1SX9okeD6a53pOPm6681vCRuigg=;
	b=WfIMdRoKscL2jdrEVOJQIoZKnfec2HfTyHvYjUEOEWStbNqwE87z//JQPpzhP9WS
	PX7xsG26gWZwbmheOJGDffpd6sUhHC2htL1e5KhZBp/lUfs0TQsEMNPkEzbX8e3zG/c
	zyqESU8myUHCFJ8M5XX2dU/QipxhRc9FAgUePeaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644616826;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PtXsxTBYrGqOcL4d1SX9okeD6a53pOPm6681vCRuigg=;
	b=LL3XhAj427Vnhm5ytp8o/ivvbCUdozR+7NYIAxyDSPFJC/vHl7wowNcJIL9x8/4g
	1DmdyFYGprgR6hGb0+YOqjui06ocOpP8ikUyOj0xRvT1bDpQAC59Fd7x0tU+/yuJ8IE
	g/JMIKy+G7FT91iqO875T8sbIXOAd0fh3MWJMKmM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeacd3d12-3b94e49b-c542-40df-a79f-5919cbfd4f9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4032225fa7a21da5d1a542bf0a0711e21846f7f85acee8c99abc888451876c3d
Date: Fri, 11 Feb 2022 22:00:26 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644616825
