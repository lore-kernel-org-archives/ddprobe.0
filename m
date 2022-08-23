Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62257ED4
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661252452;
	h=To:Subject:From:Message-Id:Date;
	bh=ZXP2WRCzRZaZ8qwW2Ff+bxrNe2y9LOhqZjdisqHYoDs=;
	b=HbN5k2ImYv2rwbnLCFn1uCe85htq9r3QGEdKc1p+9aLvU1amJq8q/lCingDAWh0x
	iDwboaCRlFQ3FMjLBvVnbscIBEpbilfEqeWlKyRpibSnfmV3pZnoth5Qul8a7rWKL5/
	2KUGgJvxPMyo55WzOHREtOZYtoWRDAicSDU706vU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661252452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZXP2WRCzRZaZ8qwW2Ff+bxrNe2y9LOhqZjdisqHYoDs=;
	b=QIQVUa7ddyiQmk9eAQU1XO4M9XiqET0if8QaUpl25ejUNxhhJQiVnsn9PIfslex3
	5oqtaHOIt80yuNRkTMMFwxUN/bOd+l+L7JJxOJMRYtdjXQJWj8b1UCnq3XVnyLsrUVU
	2vFFVmrjlT1SvUYZqaBkelD9OKQGuEuUxVVh7bZc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ca5cc0d3-9f9942b8-ca18-4b53-930e-4f7ab97783c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90a6d4ba6bfddd1221b948b61cec88f6f7a01627166566af5cd2da084a99a517
Date: Tue, 23 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661252452
