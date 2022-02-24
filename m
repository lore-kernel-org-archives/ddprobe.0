Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 848BE7A
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645661785;
	h=To:Subject:From:Message-Id:Date;
	bh=YxD8Pp4g3N+TolkPR9XgHNMnmpyWo9VyJut9wORcOxs=;
	b=C1AKGb65GlGt0+1JP9+J4E61vcm0bWt/OYElKYcTZDK5d2qr0YNdUFacvZdPEiHv
	ZTuWtBGXRla8D7n386PL5dg063g/lr3vWtFP4XpD+JEOw5Ac9R+kan3Q03BDj1Amv2j
	mDENdFHYw/kf3H8tcq0+abUrygwPmyU0HXmVp2q0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645661785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YxD8Pp4g3N+TolkPR9XgHNMnmpyWo9VyJut9wORcOxs=;
	b=jmJ+SE2jzfTD6fhZ9X+KyzrSWjb+B3xEe+voSCo3cYZTeBs+nZ4nBTQ4rGuzEeDy
	KPVGnGLveJWlgW5iuicy7BCIaGow1u4rwjEXNEThPjS1Ooc05aqwvnnYZh5UN1DZYt2
	xipTm3MGyvwtT/nU51xGyE7JojXE5Y8d68WgbRJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f29160ae8-f40175a2-7345-454b-84da-a5679cbeae66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74d3bda69e47caa1cfad25dda529df4a5dd32f802fdf41ebe0f7c7b99aa305a7
Date: Thu, 24 Feb 2022 00:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645661784
