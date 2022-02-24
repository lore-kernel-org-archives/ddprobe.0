Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 846BD1B85
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645733185;
	h=To:Subject:From:Message-Id:Date;
	bh=cgvdxxeBQjN7CReVKROr7c+kTHtQKvyceFThWUL9q08=;
	b=Ys4dLjd3eJqocHi8V6CeBTZ/OsRbXKn4cA8KmNOEu8RP9X4KTMI6KmG+7opoqfGh
	aaz1ZQ63XdvK0kgfStJmpFWnLSdyxH04rtGFQ7hVqIEfRxJuHQYTMmy4dkg6/h5Z6Vp
	M3Wz9SE6p0wrgPBDRzHDYhvEP9JX9tHulWSi2qOI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645733185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cgvdxxeBQjN7CReVKROr7c+kTHtQKvyceFThWUL9q08=;
	b=FxHgUgUJSRgQGNo5ErZQo2gOMg3acjsWH7k4YhQiPPI1zmSP78wVqirIN6Go8gHe
	U1fQrhWwc8zmHHE2YriNJWyHEQDjfFNX2NOKXGr2qwA6I9ufdsVkNBhIVpRfSZTQ8L6
	6vyMyzEk6g92q9kgl8bESn6QjdMErzWK7SelSSK8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2d5785a9-4a99c826-cc66-42b4-8306-3ffb8b4a92f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 057c9a7aafbea18cf426404862aa14f1ec8e906061be0b59b5d604fa8b396c6a
Date: Thu, 24 Feb 2022 20:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645733184
