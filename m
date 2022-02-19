Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5447855B2
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645301484;
	h=To:Subject:From:Message-Id:Date;
	bh=uZG9Xn08wh+hIK06VZ4QklntXhv3ffgnh74+cNJOqiQ=;
	b=Fyjsh1v95v4Wdhp7tmnqD6Hm4Ns2NcsT0q0Zsn8xAoFMgxsN7aKRqfP9NLn7U3Wf
	3GzCPvW1glu057c0BxpEHKGKbFy1VfwYqMYpjplyyS4OIdBqfL2Npd964sMXMbbVPQN
	RcFzneDRQGHE1tE5mOwmRs16IOMul0daxdyGxZ7E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645301484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uZG9Xn08wh+hIK06VZ4QklntXhv3ffgnh74+cNJOqiQ=;
	b=UwYMhvuaNBkJu3+f10kbnmaaEiTO1mbOXm0lUf5t2k6Rf49ZEP5gygY1LPC66LWO
	8f+/NbSxz800s40VG3dgb5Mg11A7+AbhZLFDoLLaxkr3h6VrjGHHlplSW5wgdMpqfBT
	E4duR/fX0FSNWDwSnY78rv+OhsiwLlVAlTc3oyqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f139c4cf0-a326846f-5a56-40b2-8cd9-baf3cf68cdc4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cb3a7a7163cb8dfb0dcaf43ba636c6185c3a6cbd3dac37e531e676ef15ce2c9
Date: Sat, 19 Feb 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645301484
