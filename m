Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91C267B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645776984;
	h=To:Subject:From:Message-Id:Date;
	bh=cllkCiXSnE+y5bQ2TwpvnVIxN6CzKiH3BkIUv0G2YLU=;
	b=cL910eMRyBkTT9iUm3pdXYU3s4OQoacLqdeSZBZqP1zWdWPw73gYBU3gM8eDhDn9
	Gq7HBq02mH9BwrIlw5TeRVD0feDlHLbsTOBtSjwn63ZXp7+9YKmtqyTNOVDhwqx0G6r
	KhDjlY5Of3Bq+ByGp0Fg7+IhN8rdAPU8IisSJITU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645776984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cllkCiXSnE+y5bQ2TwpvnVIxN6CzKiH3BkIUv0G2YLU=;
	b=CYLA91BgSJaeL+bEuHrQK5JQOGYjQkoBGJmrEZL9GKaQVcQ4uyJpDIRndMImotu8
	1wwVvDm1NcFzUbzPNqxvK5BRCohwbt3QuR6SUnDT2xJ/KvQ+BYJkh5uqC/YwD/6qarC
	xDH2f7iaP2Kwl9+VcfmwX4qC31oktE36pIX7oDsc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2ff3db0e-c89e8c0b-e8c4-4f61-ac0c-f4a789bd2932-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bf82779c6935ef5f8d576d6fbe5c9f8163ae25dbd4a7292a3e28604d262f22a
Date: Fri, 25 Feb 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645776984
