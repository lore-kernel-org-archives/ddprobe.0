Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB86E2574
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647032485;
	h=To:Subject:From:Message-Id:Date;
	bh=BKYGbkxxDnbv8+5WUEq3tQ6lUbkZrsGfc35eMse3D90=;
	b=RPJYg9XZ6QU6WzG5yGqzJZXF8nlq8rTVDa75lrGu6zeMwYGCidzwlid7bfNLvoYh
	7HUvMurYeLK3GLyJ0r98Iab4zjstIb3G7jQ2peLwUt8oK38ySDPujh+G74vbxD/x53a
	6RZQDFh3tUD6J7VD47L005XxoDCcbYF1DFEJlHxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647032485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BKYGbkxxDnbv8+5WUEq3tQ6lUbkZrsGfc35eMse3D90=;
	b=H2/WpUQoeO+n+RUeH3LFHFkUkB7sjFFhFqHABtjDj34eemXj4E/GSKSV9suM48qO
	K5nITICiOxvg1a6CbqlRTx1bP3k6XJ6L2KzfT1+3kxo8e5Y2EYeBs4LlgWPVY29U3E7
	oiakCKUUa6t/H5FnbGj0fjkt/ElXRNdc/ucTna9M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ac943d7-461547bb-1cd0-409a-a8c9-8a66438aea8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3bf92e3b4b0f5abc6dd6ed80b2b6fdf72e81b52c7726a6bad84625e9b95d034
Date: Fri, 11 Mar 2022 21:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647032484
