Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B467C
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 21:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644788401;
	h=To:Subject:From:Message-Id:Date;
	bh=iXYuPNh5TQe4M6s/6REqDBbiegOnNCPbWMyP6KXrKxw=;
	b=g8VBruxGHRKj0XrF3S3yffuaWTU2dz3JWQcr9N5nbuiq6IuuzxwiW/qQNFxZBwum
	IuVkwlJx1HsjrOIu4o+73nEsw3kn5hSpCAAn3PM5AsWGFsMelnK4rE+b1tnGi18gbrV
	xt0cJ6MYcKyB6bwyibipEg1jS980TWFFn7MSABf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644788401;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iXYuPNh5TQe4M6s/6REqDBbiegOnNCPbWMyP6KXrKxw=;
	b=l+B27C+bWbIqprEjorZBbC8GROgV3JPnCfAUVbevoEm6y4hH1ukqudOBfv6ssKac
	f456z18j90j1ks7bQv4a7nE9VuCXoo85Ekfo+X7N3IaC9LUWfbj2HKtsF7nQVWlbKjr
	qQGD5gQ3uI/qgmsPoewK6gjd//s/N3OPaI/5fWMA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef50745ec-88f0f709-5c7d-464d-a06a-cc13b3a79cae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17a170f00f3894cff56d82806e382480ddaf904289431b85b46a8529ef6cf526
Date: Sun, 13 Feb 2022 21:40:01 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644788401
