Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A47182
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 01:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648429498;
	h=To:Subject:From:Message-Id:Date;
	bh=l7+c1R8MuYG0ZudfYsPV0Cst0zywXVcoPVJnMGMZO/U=;
	b=iKUkPGMeRUeMwbR2/357cdRq1ujAVBNzO6ttsSw4m3qVbw6fAj1y8YrsVGQlk5A9
	cU9YhWHuKCjKs1Vd/8zrvd5sGqv4gwrX9lpg9ZST66M+NIuHfPildbEGOBD/QcwOlyQ
	Sh1cGxRa5dOpYAQNMEaRxEtXmakOnhPEcV38YcNQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648429498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l7+c1R8MuYG0ZudfYsPV0Cst0zywXVcoPVJnMGMZO/U=;
	b=X8ga1eg6Dr6QF8dOxMHaRRF2o+0pbo5XYVNh+eN8YDIuDrQOKzxkAlmwUXJr5RhT
	GNrrHktji7e3eW1RHURmVeKvMFMBi4IpkQnBVApHj55xA9GSjTZtC7mFELV4rbCHMEB
	+3gT662HG6F+oAJSBfk+hnH3O7D5w68joPt5u/K0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fce0dffa8-87c53c53-3da7-4cb5-bc38-164170c3ca4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9eaa0e905e87897865957a21e8df1afeb6a09f1a4075bbf93c4a1edb8096816b
Date: Mon, 28 Mar 2022 01:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648429498
