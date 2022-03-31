Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7028AA4C
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 21:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648762198;
	h=To:Subject:From:Message-Id:Date;
	bh=K/iEFW6fblo9xKB2L75SkWdJq1fg5LSZLNQ92qJNr8A=;
	b=dR3HwVQW1lXdTwRU138WliOvMwTGqblycXEaSAMqyyjb7dsGV7AIdOItJmGHdu/R
	zRsss/VOOWHJyRunGEQURsjt/UUnvnL9+HWdg9iDfnv6oJqNoRpTsFooY1Ey0bhzPEH
	iuIYj1NsQzuZKUqViBSqjEQC1caff67PlYYpVPF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648762198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K/iEFW6fblo9xKB2L75SkWdJq1fg5LSZLNQ92qJNr8A=;
	b=fyybb4eWkeMNabwa1XH9vDKbbNeWwJZvC4H2fYprDYxYr2BVs/hA0uyqN3a6qS5e
	mrMABBPwwOoJSxWkQ7ArRbUHYvytNurP7qG4vcDrBaf2y0oeSlWc5l7DtD2nrTtuG6u
	yq6rhi8EA8Z5pdaQV/HQ2ajaR/o3odFhrNtwtghk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe1e29919-d130c2d3-b713-42cf-9c47-2e72ef7f9a0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 811138bef43b24635f8d372ad1322edee3c172e823d65404a3b5eaaf58a9d171
Date: Thu, 31 Mar 2022 21:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648762198
