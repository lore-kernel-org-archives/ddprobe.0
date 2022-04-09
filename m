Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0494A7FA
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 09:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649495638;
	h=To:Subject:From:Message-Id:Date;
	bh=SAUlMUM6Wo9HKkszLp2G0v8JED9gb4YltEk4MxSSlUA=;
	b=ctjQdXVJQQSYq2Wmg4yrlYe0oxbX3xdRlqVOGsdTRDuMhHrknmA9E6h/9Lv2SLSD
	rpV5Fhj/i7aVtR48yrLt3RWj9EU2ODfDiVw4RJuYUGusBdXDhIGvkpGhZUH5mtsg/kf
	KoP4zVUawJsXzJXWm4gvrtwJYoJhxDS9Jr7mDsM0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649495638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SAUlMUM6Wo9HKkszLp2G0v8JED9gb4YltEk4MxSSlUA=;
	b=CgxMzwmlHhoAu+0l9KyjaVfDB29NRZkbVgAXImEKohxN8w955VCQDEFY13hG39gy
	u0BPxPbEFeOWDOpYP2Z+nB5aGyAIdN4PBNrxXP+DgN9MzwbaxtnPwAwY3cMq9CV/0SY
	5WoUYpzYhscNa7hSgAEw4J7vjb5FTNKSW+xBAbEI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800d9a0113-3f3612c8-1b7f-4eb7-831c-6ef44c6a919d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d18010fda5a35d36764bd2ee7e4986c6b442d33194192d7eea02fa7f52e854f0
Date: Sat, 9 Apr 2022 09:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649495638
