Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE6A17A
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 17:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646068885;
	h=To:Subject:From:Message-Id:Date;
	bh=hfUIBgSorX6uY0FjVAO5MkIP0QBU90vWWsaVGJn966w=;
	b=jwiVi8hlV3aWHARKxtK48uzM4IKkz9nspxGnDZJ91wbEBRJOwpBYr7xswBJWLi3p
	k9FrqJDHpqE2jsTpKgLywtM0vyriz1M8PpKc7jzxUc5fwA6S6EmbNUBwxkw+j1Y6/p4
	hojX6Z4lsVVsR7KUge/C6b3YLzFcgnXpMmTtBof8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646068885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hfUIBgSorX6uY0FjVAO5MkIP0QBU90vWWsaVGJn966w=;
	b=EoCQz6j1FkF7W+3iyw9b/WNaJbPhqX5ePQQ+/qoHybBDj4PqwemlBA0NpIfkIGOB
	3oTImpq3FpmMyfGH5Wlncqy60CqwEiF1y4AUV0RwrHp/kSZHlHGXzMi7LRLCsA5PCeh
	fsvh3g0obP9wpVFtGmQOtrXNaxgK+HiJymZ85kAk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4159e58d-68e9d110-afb3-469f-8d96-5354b4cbb8c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e407388cbd46984d733eec596517dd8d2078c8ea783da2289f40994e3cd782b9
Date: Mon, 28 Feb 2022 17:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646068884
