Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE542161
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646154984;
	h=To:Subject:From:Message-Id:Date;
	bh=5+FB3dCPKOa3o17g98JGz5+NEy3dSp8D2nhEWlwUjzY=;
	b=QK4s3RsYYkkjcHdYYpgNSTS6sNmdyU5mZuDkLIw3lnie/nB7Iyg6XKq9SLL1SC0c
	hE6lKPsoZjXtiqRqLJoxU9pURsa0XuNk25LwsCnav4fCiDbp3fUJ6zilZluDaHWAUdc
	hYJhXP7IFtyXMTQZycpi7nDLzxPkJ6BeM7XpacWU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646154984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5+FB3dCPKOa3o17g98JGz5+NEy3dSp8D2nhEWlwUjzY=;
	b=BBtUsT8OkIbWXGOUJoOPUln1xLsNZsWLnbcrmtx1EDH01OPqiWydhes6e8jv285v
	FTiqcq0O38RVzb8Zm5PW4JU/dpeoBIsy2elwu/pUKI+En2rdRHYZ9qud75c/vOnmZ/I
	00AvXmjZZQh3pIDpUjQBk9BssUCjc0/7wJwggp0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f467bad47-af6e805c-77c3-4a3e-85e8-a0cd86b1ee2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e8b53592864cd5c39c22d7e4e1c69182fa127ff8bbcb81aa6b3b03db3b6feaa
Date: Tue, 1 Mar 2022 17:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646154984
