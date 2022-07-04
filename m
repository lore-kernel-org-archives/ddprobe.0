Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8CF223B5
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 09:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656926812;
	h=To:Subject:From:Message-Id:Date;
	bh=NqG+oav11Vw/j4to6QOsunK8JsmOV+bhrscTO21fY+Q=;
	b=Ld9CIYb4DV1lguwjh9hjOeFqogWIOUTb4R6oJALuuw6vSnz7MSPm2m6JRsDY/MWB
	1gSuWoCnrIhhE7uopV/+swpPgZ186tebkfeo3nXuyiAEhrO3i0ORUJz8V+eD/QYnra8
	BOtV398mq+06Q9FJBXrOwepYEdLg6dziot6nJGqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656926812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NqG+oav11Vw/j4to6QOsunK8JsmOV+bhrscTO21fY+Q=;
	b=RN7YLsq9xzCLZtPVcoNCNYVyfb8bxl40A1bSWoBKdStjr1YYIVR/2Sqp9jmw22A0
	gLRYXfciUt0FGtXOp+7UcJMOULcQ1MwOtoeYBMM5QLdqVIAhmMQgeiD9oUMHgrhxXVv
	TlP6oOKGeFtieJG5WnGIbgkVa1yO/0EnraQqXvZM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c888b884-ca4a467d-5c7b-423d-a8e4-ec47d818d79b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0658afa7b55e4ee3a29a961d63055d610886ca44ae0d9c6f1ba2b19443700d06
Date: Mon, 4 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656926812
