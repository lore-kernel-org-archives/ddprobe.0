Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42ED365
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647908185;
	h=To:Subject:From:Message-Id:Date;
	bh=qq0SC0CTlb5kx/WCJiY7UcoXkY+8dZLxIw42NpHg24c=;
	b=hnnZsQXXHx8ePbs/9uK0nbC1n/ZcEScks+7eOo/V201XVY4PEyFxzfVij2WfDFw+
	7/Ax7Tj8pEuM8242g09tW+genjRyBc6NWXR0gx71p+cXvWUWJvhd4UyhjfYPiGMfMgj
	oxtWyyqgHO4vrSz5DbjZ6ABM++5hBFx27FnRml/8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647908185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qq0SC0CTlb5kx/WCJiY7UcoXkY+8dZLxIw42NpHg24c=;
	b=YZ19vo1D74AAJAkZ/QzXbuYjoudaaRE1A7g/HWxLZ4mOrt1IeZCaU0U83v65yezd
	PZ9bjISjuNZ33lhxJWbybJdmX9AZCZ9KneqLXbcGrJ/EWVHp5NWlDFNHZZakLNSJ1P7
	//S8MuPD+hRlF080FT7uJwhQznhQFWZHPAOspEXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faefb62db-ce8c8de4-21d4-47b0-b678-4d270057f5c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6db1e402742b5dc3d425a76cc66adeb698733a0611d40d765608db56d5cf883
Date: Tue, 22 Mar 2022 00:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647908184
