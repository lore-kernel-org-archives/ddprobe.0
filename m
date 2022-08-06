Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A8C139C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659790852;
	h=To:Subject:From:Message-Id:Date;
	bh=COqRE+2zyCKmWf9toBnKl6QoX4XFUl799kqxenTk4PM=;
	b=W/5Mahjd5suUCR+Ezj/02xlixm5W40pRyfEj9lSd25UYX1kTl5iuzMQIt5kF88nO
	AsaLl1DKUCODN98K88FUP0kU/1WbD+LcjlQGgL14TB+lfNjrh6Eev5Lr4nD5ewjL6b0
	zTUGPCwiuwBo0a4EjZmYYgtZeS+rhtgx+eNOX7+s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659790852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=COqRE+2zyCKmWf9toBnKl6QoX4XFUl799kqxenTk4PM=;
	b=kU8TvODbBFZtf8c19VhGPYN75E91r3pY3rjxOncUAFwi5NC0HPIov86s6SodMHaR
	4JVj+LolYbJWwRdlclSLgKaUTucywyhVFtMVujrPpCZim9paxtNWgpX/chSnlCVmUvL
	BX7tODBzj7rHfvY96/oldGHAUwU1mtNx0l8sBWYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182733e81be-cdf13352-c1ec-481c-b500-af1fbb8c88ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffd2b93544b51f49e3a49d58655ab0000ade6c6bdf2eb610b80e9a91e856000d
Date: Sat, 6 Aug 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659790852
