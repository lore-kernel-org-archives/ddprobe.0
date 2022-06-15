Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137687A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 08:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655282219;
	h=To:Subject:From:Message-Id:Date;
	bh=jL2razy1u58u6HaPehGIqk58y5VUFihVVvti4NEOr8g=;
	b=WJiwPgvpM0wLA2ZKd1rl2kehHZl/M9m2vue0QgReml+Ixu/c6vUpMZHXJvSWcqlu
	MVFjBOhG2Pj2fgwiAqZ8V/jmu9nE8LurYuOuKJvojQyj8enN8FfTDa2IPecLKFHxLAo
	/TWjxUAR9k6GX+SD2WbSx05X+4pLx+gc77Q/Rh4s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655282219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jL2razy1u58u6HaPehGIqk58y5VUFihVVvti4NEOr8g=;
	b=K4I3mFlH9CEzCI3mVkMZK6ON/xzI9moP4iCOBffMhVFqku10mnLy82yEWckxmYzy
	S3Qqm7a4QmfNkA+OgC3frPSIaU5l2Y3wuHx/MVJEMij2Vf9PexV0lLXQcm9m6s4EFjp
	Oegqnlcci4AyI6552voAC9x9ZsSBGG1GdD5NakGQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181668238e7-99bfc103-7d80-4031-9e08-488c03468256-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6dcbadc3a89d8cb972a7ccc4cf8342029dc1c7962f1b6536ccbe965fb9cb2b65
Date: Wed, 15 Jun 2022 08:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655282219
