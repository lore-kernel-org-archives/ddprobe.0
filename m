Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C551849
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 09:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645004185;
	h=To:Subject:From:Message-Id:Date;
	bh=11sEqOcN/HzZAX2CqFIZ0FoJjthaQ+HNWPPpzD1tCM0=;
	b=BFX6ZfHm8d9eK+TDhWskJGNavyJtz1y2NESjkcdmpQm20MaV9D3MW9Qmf6dJBjc3
	cq8zq804j+0LNuRiKj0YRIGn4kaSdXmGj+l/qWLTOBGgBmiewc28vP6aR8MPVqihJ5z
	0lYIN2CxJ+d9eBbfWJFROMZFHemZmt64sJCvKZno=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645004185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=11sEqOcN/HzZAX2CqFIZ0FoJjthaQ+HNWPPpzD1tCM0=;
	b=RpmcnGu+FYcU9oVZ7IB426ccmcUzVFpPDbG1E0zoeHzUtJRtthIxhnEhBeFaQYIo
	vizpXmyJhLXGhDUucTyG3b6tiiIMYB6S6QlAESoaNveXWZlAr/lyJ5Jue6xdWUmTtpA
	dHdi/MJ4ghpEbHrmSqnqP2WT0jQUDTvb0Up45YIM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f01e3dc80-192cd056-9337-4d3f-9a26-5df0c552335f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27b66f56506544afc935489d6fc6157d17ab0b0b35e144bd23c582397524a945
Date: Wed, 16 Feb 2022 09:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645004184
