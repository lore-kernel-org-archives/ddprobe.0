Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA9548A4
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 18:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645208184;
	h=To:Subject:From:Message-Id:Date;
	bh=63OvziMNJK+1JKMTmI5+FE4M5dLq1YIVCjk0rs0Xlzk=;
	b=PfV9HUZj7zvDaTu/FyQQc466UA6UH7LL/2FxhB3toUfugv0E2RAFdnytCkeJ1w05
	om+825a8V4ii7ig7oFqwCjEFC6UEN1gDElGCA1rAvgQgGt4XnfWziDgzh4xSdzU7oSy
	kYczG+aPQ3dsQJugvRgh5QZcVEYZNGN7t1H9xZ9g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645208184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=63OvziMNJK+1JKMTmI5+FE4M5dLq1YIVCjk0rs0Xlzk=;
	b=fBKde/CpZnfpr23jZcvuORyrtM1553PetB4orVisqNiIwkFBRZcxxITH+jrDozr0
	NSaa7yhH015YLRsBOtWZLXGNIIRlbZbtj80PC0pBjK06zUVb6/rA16y0oCXvX9K7Ts6
	fhGG1Ia5gDhuCf3aRYPLsj/cVD74Ly0xa/HTmQtA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e0ca7be-b79bc2e1-35da-4bd9-b6a8-2651c8aeaec8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3a46e702356d0439087fc4ced8b6d6b20bd491f2c976a4ce460d2866bf73f19
Date: Fri, 18 Feb 2022 18:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645208184
