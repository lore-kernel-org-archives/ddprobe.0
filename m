Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519172F26
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660639252;
	h=To:Subject:From:Message-Id:Date;
	bh=/4VFBhoZ8aTLQZSwLF5GT3jnsTVUXZUkPZyAV6+FchQ=;
	b=f/rtcjSf3my7nJkvsCHBAjIlYeJ5XGZ4z40PTaD096430eYboR0HiOhDQZ/X88Tc
	Ou+nSKBqzA+tB+CtzB1nYNnNQPtAoMkAowHNNUn8uI6W5snoqh8SEkWeiwSByMtaJVx
	zdIap6vsLS0cXjYHaelga3rOQiS+LGJYr9sP0bRc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660639252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/4VFBhoZ8aTLQZSwLF5GT3jnsTVUXZUkPZyAV6+FchQ=;
	b=JoUiaifiESyJi8xw4h6gV0h/43UwkOsEbi1YcAxJAKWj8pAH62pmVdU9b5eHYXnt
	2iA0bbCTT15mPESrHHgxdkoPQuKkQVBKhHynU9zpclCLkpbgYaVGSz61yOTdJYVqmYG
	LbwY3EhYx6gCp6eJ71/NHmbGi7LzEn/KDyy6r7Us=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a5d01027-bdedfb16-8d60-4740-abcc-47ba0df4ad19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7ed4f3c17c7765c78070f9f1a4b1e054a9f5f4e2254bc88ed0bd2a0069bd22b
Date: Tue, 16 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660639252
