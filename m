Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601E2EA1
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 06:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650348358;
	h=To:Subject:From:Message-Id:Date;
	bh=yKiVr/Buu7l2T6esf+dYhzRbatQnrTz0ZKar61ub6nU=;
	b=h3k97KVCQ6V0qmM2Cj7+M9I2lKjv84dTP2GC0kgeo5vUHVl3TaQpMZVCnyWxrsNj
	RE+jjNJ6ZF8zOM3FBG2Sun4Cq8ADZLdHe+N27dNE2nKrug3ogP+yXGQNxmY69i7UHc7
	stpPTMnld3FP/jJnI84UrlyRN0IOGBqrjI9d5tng=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650348358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yKiVr/Buu7l2T6esf+dYhzRbatQnrTz0ZKar61ub6nU=;
	b=iofr4bUXF+A/iho4tJ+DYGBZQVNIo/jTnoQXJ5UZCB8C6duUsVUQ4mabSv9xC4R9
	gosvT7iOEnD6BiwOqUbu5UxZLx2fX3Xwrjw5GgxauXHzskzL7qnDliQLX/DtHyHPP4w
	X4XD07fGAcb6NdWIWUZxvlY72OEwVNSwTNzV1dvY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180406d7ab3-402cc2a9-ead4-4dee-8ead-572003d3cd64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5ffefae863ea2549d8787c2319e8840be10b26ada3b53f354a2a1ca72d2d282
Date: Tue, 19 Apr 2022 06:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650348358
