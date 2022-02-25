Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7462B7B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 07:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645775484;
	h=To:Subject:From:Message-Id:Date;
	bh=cc/CckZdYXfVw/XEVdSit4N/7BePJvqPYnNIKYmIlIc=;
	b=NI4rGkrucr+9vSfIZATpoLS9QDsfmHLo/hZgkrNwViqdGuWvKPbPgXmKR8CnTYyv
	tKAxWph1zXvcbn4vO81rKwd9i1T2V9flddSd4jv2uNlpl/NXiqYsWptXvOYi1XCbJrD
	0IH+WKk0I9fS+mapVt1Cl3s14/R3zot6jj3j7cv0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645775484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cc/CckZdYXfVw/XEVdSit4N/7BePJvqPYnNIKYmIlIc=;
	b=cZDScxhe93VW6+YtXMNs0fO3JpKnpClUE6W9PhD68s388ECObzGs8NNRt4sY0hUW
	JRAcUqUB8YrFqvgreLg/42ZBj4Db+hgjuhOcYAuBrNk0uNyh9X47ZsV87Bck30Pn2+U
	gz8MZ7T4e1aLr+uIIaqw3dlxUiKGFgMTwv7FnQwA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2fdcf774-a4d8394e-2a32-4942-a732-f843c8d1f583-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb0b5c31fc1728f502567419055911e80c096dedc7604416d88c339b69e14cc4
Date: Fri, 25 Feb 2022 07:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645775484
