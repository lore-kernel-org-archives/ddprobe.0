Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C887E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 02:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646964085;
	h=To:Subject:From:Message-Id:Date;
	bh=1BmZvgcbIAW+g3Th6pyWsn3IeSEyzh5yfFOBjLQDQyQ=;
	b=PSif/8WRcX88cZbR2WHd4naacdJNx2W8LS1aXmnunX1zwPX6WzZ4tQA+d07bcIR+
	qSfglyPCt5Fag/IYNgBRswRZNEUFfqiBhdWSbMt1aW0M80cMAVERYtOCr8pm3LuhlPt
	ZIEft0S0ec+gXDzpGDdGmunFpJuWpMBvDt+r0jXg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646964085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1BmZvgcbIAW+g3Th6pyWsn3IeSEyzh5yfFOBjLQDQyQ=;
	b=M1q9ANAq9mNcupCNbKuP0Nq0Ge9mjV+uwg3AOsooy5drgP4JrFNdSqArQ+dAfgAL
	0FUL7ZWP/xxD+sWPl7GIbLPr8riCncmx1GNpWFvfPc70AXUWhxRnAjkIPWqXppBJtNl
	49X9lYYLRdeBUTa6YqMjpM8EHPl2GJxeH6ueEtaM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76b58ff9-a1f5b300-6d0e-46b1-81b8-7bc210f764ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41c3c0fc6b6b6684c3c7cb652fb7413d66bade17bc9073f98acf6e34facec900
Date: Fri, 11 Mar 2022 02:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646964084
