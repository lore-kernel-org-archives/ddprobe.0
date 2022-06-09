Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC872F23
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 15:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654786859;
	h=To:Subject:From:Message-Id:Date;
	bh=LEuqbjeU3hUgrkw6NqrzhqEe9KSFtzTYa1ZSSo4eV1k=;
	b=Z8o4Ocw0i3qn80cudbwgZvHfjHJfGPN1Z4X2GuLxrys1dvhfOTLB2syne7FO6/fH
	Z8OsKkvUDMvRMXiKhVzw6tphwiddAxRoYsD6BWcqPUaiz2FtoXBRnv1+24PhO2DHQDy
	xtKgbBHchJO5jK0Mv6TJcwLsqnBz/uUP4igyfktg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654786859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LEuqbjeU3hUgrkw6NqrzhqEe9KSFtzTYa1ZSSo4eV1k=;
	b=HF/kAMwVWIn7RtRER4m7+cfdvd1ePc5MN9M34di20GlPghOA6JX+V1bCzFX9nMZo
	amUUj4tDsdfoq6RwWqMwZDAph5mvGaHKyZxT9Uc0mKSXur2NSSovlEQcwX6J0/cck1S
	uMt4ZpMve+xWj2M80QQH+U7Ms0YGOEubG+4k1L/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018148fba107-9031b38b-7b86-4d37-9821-8b8aa684397f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58a832542c72c54d101e16ac2d8fc754cfc69ab0913a73d4ff983600912bb9e1
Date: Thu, 9 Jun 2022 15:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654786859
