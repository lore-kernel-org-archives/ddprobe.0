Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A580B48D0
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646747785;
	h=To:Subject:From:Message-Id:Date;
	bh=xogSXduo7YBJgs50MrWyTCns011XQr3e+Qtjw5h+n7I=;
	b=Xax2Knl+e4hvMuuypfgXyxpZCQGZYxj5FMprkSc9OoD7mckI6qgGm5FHensAvwhZ
	TR0AgHWTA+1TssQyylYCbJnqosiPPz24BH4KgU05lraK6bNca7wBXrgMXts7hJBgUkp
	+RBESMrXPBZSWCWHmYrfM3i46Jke8oEVkj8iKcAk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646747785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xogSXduo7YBJgs50MrWyTCns011XQr3e+Qtjw5h+n7I=;
	b=UHBzA3BXsXm/FQQ8Eq0T6oopZMMfB22gTJ8FafGtMleIIrRUzGrXshWvouhI7/Dr
	HNHTJEiw6p8/LlnUgMigD0RThhLQicw4hjIiOJHM4YOwe3YVwJ0I8xkg2RbG799pY4B
	mwYuuUVsyaoDIqnSReK2xLstQBY3CZABdjNEUoBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f69d1164a-be01663f-2319-4399-90ff-c9a3d43def70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1bf3073634f8fdb78b432459dc7f26bcb1e6d66ac598d5b33937d1afed477103
Date: Tue, 8 Mar 2022 13:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646747784
