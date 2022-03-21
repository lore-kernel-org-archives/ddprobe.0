Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8042236F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647831985;
	h=To:Subject:From:Message-Id:Date;
	bh=c9SatTF4mYzJNhU6Qk0QsDfuLmEp8NGBu7J7cESA/AE=;
	b=Lk7yZacyLMxQRq30JOgS+/uCQJBSR5p8uSEg6cqrLCFQUbD5ZIoSDxRzbwDxOFeA
	IU99p+iL0Ks/t6vZqbsOkHCjtp67C10jjsDKn+OAaUUGhdZ9xbHnoUzn3xt7HX+D/Sw
	AXkvWuRZbVVH/DRzt/u870Xfb14kei0HZ5G7fPHM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647831985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c9SatTF4mYzJNhU6Qk0QsDfuLmEp8NGBu7J7cESA/AE=;
	b=fAUvgGjzPAn1Idmabo2uwVUjwliCykMaYfMGvESMjb4gexITH33CS0Q7lDIOAma2
	Yh/t8D0QIk0Gl6zl7dlR6wavvjJ8eb2hjlbIm88NHgh/rVOHlT9qkrthZO2ir2/PhNC
	ud2yuFFdW6mePhjJwNexYzVb51XT7t6PqIWSVgnY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa70aae7-febd9f6b-2db0-4eda-9d4f-abe5b8691fe8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df5549fce69a0c6a06e45d37d01820969c2b3f8ede6b1ae8369406b9a19c5dc0
Date: Mon, 21 Mar 2022 03:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647831984
