Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4159618D
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 14:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651588258;
	h=To:Subject:From:Message-Id:Date;
	bh=Zpp3kTFpRXmgQlMGv65BMq7vIZueJVDGnuyLvpnAUBA=;
	b=daFs0ZILE4rpishSe/sGXk+/xbg7oN73LXUunTWm9byC1stNIZQ1wi/hDuvXAiQb
	gQ0ynqC3k0pKFjwrzC2mVZQgSTuhpa/Rb2GD3JH0n/XFG6gpLFcyHnujXMM4xQeDuAa
	yilSUkZ/vsD1gXuK+7MTRwaJy5KADt77B1Wxgm6E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651588258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zpp3kTFpRXmgQlMGv65BMq7vIZueJVDGnuyLvpnAUBA=;
	b=OfE3FjYUeAGgmAG6ZFQ8+Vg3GKOTwzufNlA9yuOCWi+oLP+RdgcBSd3JWgTHdaTG
	LSDaOyy0Alj8OsOIMllf8owGg0d/c3MZxHmgr3YYRYQ6WGXhMKYIUQSVfWWHq0trEx4
	pFSAZhUG+xjDeVf4kPjvvv+nrZi0I+k4veXrl49Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808a54da1b-cbb74b53-2d48-49ba-b8c3-4c225e36f055-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e74395c0ee5d590fd83491dbfa0df2541620509dcd9d944d16f8ba3886f650eb
Date: Tue, 3 May 2022 14:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651588258
