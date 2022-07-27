Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9F528E2
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658949652;
	h=To:Subject:From:Message-Id:Date;
	bh=iKE5B4BRcQk4ARxh+jr5npoSv4gkrWWROOOvl/NFO48=;
	b=AqThGNoJxjWtSfPo9gLvvaNzAAAprq5BOnJ/rciiosnnLE3p/YO7G5kI8XlU4Qdb
	X3zX4K3Q24zMFX33sUx49qDStK59/DYshMigFtcs4a4q582urUvS88QXJX5VTYtCabP
	wODbyD0/JA3x0kYhqW2H1p5ND1cGSDhEbLYOvCwU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658949652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iKE5B4BRcQk4ARxh+jr5npoSv4gkrWWROOOvl/NFO48=;
	b=dkrEjT0obI1AAtbG3sQBX660vbaQVj89afHIuFqDs6BV/UP3fWae1iJF1+Dcv34d
	vYEq+vbLLKLHfW73EX4L/Scm/cS0BeG7/Gr9fcAUrd3H7WCRMgot4kUVu6AZqRc3wCf
	z6nENb1y2zJ3Jz91BKrAHWvnZ3xgA5YmiSMeUVgA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182411ad04a-47a3a6e6-79e0-4acf-9d50-52054b22d6f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc7c04c4a343ea9debbb2aaa3d289517801978f54c92e18ba88d3d3d38c92df7
Date: Wed, 27 Jul 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658949652
