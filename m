Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A422583
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 15:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651679938;
	h=To:Subject:From:Message-Id:Date;
	bh=dwocAxhZ9nVKKwE98slI+1PTz7Pvbu0RDvewDC5zFvo=;
	b=QOUjPWqPICyHLqRz6wjTTnntKHZlLpMm7pZH5+NVhDDjDkHuXybXTS5bXBpnvBiU
	1L6QDXhlgIIlFkMJy+SJD1Bfy3GuX1MCRrPexwlvy6F2eI8lmSmLugqPwmWCnfdzeb4
	FQw2K1WdTfP71mOgm771IXMnjaeWllfEUFTBfids=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651679938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dwocAxhZ9nVKKwE98slI+1PTz7Pvbu0RDvewDC5zFvo=;
	b=DccS/ocz5CbHHikkEmBhOq4h6PJ5it3/UL34oAWuL1tEHbdYklh5OoHAS6LoiHTN
	cMeUfJTq5Ha+9KCISoAYebOznjpN8aNjPR6h+k0WWH/XqXH1xscS8z3zzup2Egx0gqY
	hhiOF237Vrz3QwDwymIvkf0VuduxoGG0B1OUgHcw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808fcbc6f3-36e0a3b3-d1fa-44ea-b7d3-c99b06748488-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c07dcc728f8f8034bfe547000a3fafef1d29b60522f86256cc9c2f84fa1411e
Date: Wed, 4 May 2022 15:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651679938
