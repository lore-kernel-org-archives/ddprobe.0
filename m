Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADB1160
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645363285;
	h=To:Subject:From:Message-Id:Date;
	bh=CNzqQ85slARqVeOGWbCacgY/yXBemajqPAU8iD0lIbk=;
	b=GGSfib+2+/gJbn8Bfm25pUjIx7t1L6MuDrahWRoZshTYq+/M8YtrTYC95wadFhHN
	R+TtSmVhL/x5ob0d1tfpME68nnQYAZkVWOccMDa6xU+FDnpjaGBxjSTzcRYsTHURZ/n
	4hDJFju1PvRo8BIonUarx1PimeDiKfPoOvFlekuo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645363285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CNzqQ85slARqVeOGWbCacgY/yXBemajqPAU8iD0lIbk=;
	b=j/u24E5wSPjfc1th4s5rO0ZFqzHc6VV+RECpPskZMZVwUG6xJH6a8BeTSdRc9FFm
	xcXl618ubi7W0MvW7CFfLF9a0iUtq8FkjBXmxjYe8WJBp1rfahK1a2a79q+xnGqBOu6
	Em4gP3kN3a4tCReNOyHWadxj+hzKv4BfbvYByGvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f174b4b44-4bb9187b-3be9-4dff-83a6-a73a194f3daa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cd90e62196a86af84293abf79b7e5c413302a592f3695218aa3ed16de094bf7
Date: Sun, 20 Feb 2022 13:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645363284
