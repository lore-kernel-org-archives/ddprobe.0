Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3954D19B
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 08:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644654631;
	h=To:Subject:From:Message-Id:Date;
	bh=fWLwN4kMng/EUoNTLZEl9oi4EWgNaA41rQPI3oSX1K4=;
	b=mnEY5kl3OR3FEJwJ9g7r6BVn/NBTMezgMy5vwa26D5m0FGlnpw7m8PVr9IYlLkJp
	HPIlmlfi5pYoZ+hgHcaMUGaczxDIGUVjy4EVod3yIzd++8uHjkCI3ul2tzSMpXFE8GK
	QC+MuHRb9oRee8+Qxl5oTTMVSTpxxlx/rV63ZoKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644654631;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fWLwN4kMng/EUoNTLZEl9oi4EWgNaA41rQPI3oSX1K4=;
	b=WMbYFK+qZ95Nn1mDvr7vJpEVBbExdFPIbaxYGaBp9f9tb7WEz9KNOYCAdWBkjgkk
	vy8nv5AW4CtDP0rr6esdqys1yYUpYAVDZZvaTzPYYVaVgjebVLtyibh0DQaIZ9Uaxek
	5hdAPWsoSTKEnZ8KZOBF+VHVXmJ8k+dPlZrw4+vg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eed0e1a6c-8030d00d-4697-4b6a-aeef-5e03b52ca3f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9aabdaaf4b8a593796eb3631954856e0b3bd2ceb323e4e8df102d25e585dc1ae
Date: Sat, 12 Feb 2022 08:30:31 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644654631
