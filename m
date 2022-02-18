Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521AE48D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645185684;
	h=To:Subject:From:Message-Id:Date;
	bh=QQD9bftRjmR7l14Gp9IO6gEWhN2dUcvFzxCH/m1GOWs=;
	b=HeKKJrN2s1mneqnPOmYZEqYJtrz4tXAK/nBS+MDK9AgzJiRc9sz7Zhip99ilUTUa
	hGuvDEiyyptslDI0OLOME8ryvvjfHMK/L7mGAY5y6G/l49y5YX6A4iaHT+V+z6ozd9w
	NGdezkW3bablTStBN1bDJgHtDFRMWUO1bUTCNZVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645185684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QQD9bftRjmR7l14Gp9IO6gEWhN2dUcvFzxCH/m1GOWs=;
	b=QLnrNRLdIywIpKMCpTS/MnYoJPfOCuuXFdj27QmPgK+8geL+6gxTFJWRlHGQwzw7
	RKmTOTZ8MbSMKeWjtQvxyR2qQFZ5TVhyLvWlxfOUBN1Mdc8GH3lTQ7KDJ3Wh66vMmRx
	zWT/FS+JaBx3zun2cXLbbx6Ezqa8OFj6D7grPTuQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0cb5550d-74e74796-f647-4733-ad2b-d42899d288cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b55d52158c88ed21e3dc584d912dba0c1ebd945042d0bcc4f127a223c659235c
Date: Fri, 18 Feb 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645185684
