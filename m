Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5571D15A9
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 20:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653079259;
	h=To:Subject:From:Message-Id:Date;
	bh=LxEyUboIfpww7AMPMjjItu6b4t8ug8rp9Nqx+wr0zmI=;
	b=AWYpi3Fx8GIJlXC8Zttn7edSMhny2mBPwhcDo3dB9DKXQ4Uv0wtCetU5w+h+KFU2
	uhaFU+TYgM0DExQ0OMMaE/qsnzS/1grn5a6e3mKH+k6dC7IsyKgXgFMyvEb3HUny0mq
	m9yu+R8pe6hFk0C11M+1bGeosUt8Ah8OOGyRO8fA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653079259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LxEyUboIfpww7AMPMjjItu6b4t8ug8rp9Nqx+wr0zmI=;
	b=ccthIHZKIA7qSEIriq1ekJsozOx6YAOUqQwqmopf2fVZcMDVaAhQqRrY9eLeCIXO
	zc3NekcP3GrN8WyBGHE3G4lVgu+IXzCZpF4O9wBAQGfKIddD1QHmMiMz8dX8W9qHPgP
	K7PHnoYL+tf9NhjbfyPk3HI90qwwv0D4JW+L7ZGE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e333b8dd-3d26b8ea-d674-45f1-ba2c-d11124a6fe75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 108eaf3be90775556c196facce8b37c87c545dab4a7946864c5005a8447612c7
Date: Fri, 20 May 2022 20:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653079259
