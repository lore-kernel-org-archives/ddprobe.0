Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059DF367
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 04:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649392018;
	h=To:Subject:From:Message-Id:Date;
	bh=pGhpe9WDd/0Ih1NWkb2hq+YgUK1gs4gT+9kygzlYYrk=;
	b=YyVFJpMumyGMrffWvH0cIgGUxy6caeXm+2ls3tqa4oQiAWJ90jikhn96oLOKRU2w
	cZNdkC1gfmnnSnbcfz1KenY6eoGDBsuIhBBHCGiWEOuUQmHJDaO7W6MTT99Jh05BNJk
	k5mnFmzjRr8auS5o6Jo8uvcpVCV3zX+UUq0x0d6s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649392018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pGhpe9WDd/0Ih1NWkb2hq+YgUK1gs4gT+9kygzlYYrk=;
	b=IWM7TYMijK2I7LuaJpc6H4PYikYmki4o0CaokVam0wO4+g1TBNUQ2ScHp5uZfGaK
	Q+MmyH1H/TLIhFCevZqZc446wY6Pjhy5VjUrT1aYfwjln62Wa+IszmHz6CllJc9IDuR
	Cw2aldmiVXWAXXdfenDbWtSIT9ow6mLeOroo3284=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180076ce340-31acd1da-a1a1-44c3-b04c-5890f08d2a0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e184148fd47d28948eaa6814af47c0e4667d2120c766238993100dbad8e8db6b
Date: Fri, 8 Apr 2022 04:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649392018
