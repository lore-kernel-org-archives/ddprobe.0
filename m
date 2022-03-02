Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5732576
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646205385;
	h=To:Subject:From:Message-Id:Date;
	bh=wNnBedIwBbAsdtBlbqfBakWl/4qnY5oN1808R+G78Lk=;
	b=JVu9tFwd5qDpP7ifhwlBThJmoP4vC7QrAk1jEHggml/aeWl+rQuUcRcMwlwQbkeU
	1w7gOyZfUOOTGOlE87Uyks1md8oU8L29k0oc18hKj3HfBWWJD1Zq+3GrlPuLQmiTYv/
	gzn77a24D+gB5jYUtSNO6VlakKC7MDrAtcYjLndo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646205385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wNnBedIwBbAsdtBlbqfBakWl/4qnY5oN1808R+G78Lk=;
	b=dC/4LvK2pT7Mmp+LBM8S269EQQS1uVedsQkoux9lnbnrcw6kIlRwQvarYb6gDZAK
	3FYFmkdFQoSrX6G7zd3C0diQF8xsJuHIBn+Kj+kbstNwMPokDrbxq27+408Ys+tIq7S
	TDMKSwDFGjnfDWCevKrGj5Q8RhSnjATuOotaaDF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f497cb8ab-f48f367c-b857-4801-9b9b-dd10032fe51a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ef9d6b3fb523d767b4d1c62d30ce3313050d813960418ca1fe627697fb192b9
Date: Wed, 2 Mar 2022 07:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646205384
