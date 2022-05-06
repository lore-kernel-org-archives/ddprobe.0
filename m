Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A509D7F4
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 09:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651828379;
	h=To:Subject:From:Message-Id:Date;
	bh=sQ/QLZHCQ0Bhs1tvxK1a6DL5MaJjibfNswG0ZPF3Yx0=;
	b=gDtzVhuhHVz7JJNHFJnUJNk8zrzUrAjUGjCFBPj5mgXpeJOWcAPk93/HBaS9lfgK
	hLSW5yDo7ufa75xCBBzyvDlVpyRlRaYXqHSEqJ1grY0Q3zfy8QcA8aDZFwlOqnMiKdA
	gKRSap9zRoOw18ozHZTF6AJr0UKKv96itrSlQfXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651828379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sQ/QLZHCQ0Bhs1tvxK1a6DL5MaJjibfNswG0ZPF3Yx0=;
	b=OXpAn9eSt08hZ2ctHsKILgmfZ0mtp/yZfDFhahCQMGMF7K8zbeG2G24PQh7RorZT
	gc9TuRpoSuhpfhiZxEG652ihnmbTRJzX+M7nQvoCe3nuEvthnl7YC0tZGn8sBk9++6B
	k4YZXkJu0n/mNuVdNHhKFXYcWkZCyal7XL56E92A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018098a4ca9d-88f4162b-6634-4235-8424-24d8beff51be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8698381a24c2846bd5e996db62a20c24bc9ee2e02be0f79abee9a285f193cf96
Date: Fri, 6 May 2022 09:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651828378
