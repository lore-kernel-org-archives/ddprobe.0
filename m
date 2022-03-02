Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B517D7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 12:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646223985;
	h=To:Subject:From:Message-Id:Date;
	bh=NujOTRtyFmXwvNyjn6i+Olc9Hw3472+PQDXZytrmQhI=;
	b=cdCe+AQQ90GSi1n/lVnVIUxeE8kLyQdmsV7XNsQn4IrLWNu5mmmNjHvO/02eOhzc
	+lpcXlRnxd+Z4iJLMq8PAT+VSMj9IOkHEj/c1xDrG7FiV31JT327+atAf+1dm+emIQz
	gFaOCeBQ4VP8qtzE5/NAh+bT0cocF49PYXleL7oU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646223985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NujOTRtyFmXwvNyjn6i+Olc9Hw3472+PQDXZytrmQhI=;
	b=gSYaB1SF4kkIV6J2O5GGi+3AL3hiJyVdRcOwWhUtdoP/oKBymGhIVAnNWFKcRifQ
	H7LZ1SmOsptvv5guUBsheEOSy5F64OPnHvyoqswpuP5rWR7T69hMFDfTYyu1XgDqnq+
	TwHU+IPNyUb60ZsMnx1IdHZNdR/gNOG6M9GOGSO8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4a9888dc-4b191cc4-b692-4434-8f76-87c3bd3260e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 093a0c6ce3db5ee0b054037013e6035c8110968bb2818ab11ba242f5c07ddad8
Date: Wed, 2 Mar 2022 12:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646223984
