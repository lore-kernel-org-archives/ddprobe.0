Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669297A
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 13:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652621819;
	h=To:Subject:From:Message-Id:Date;
	bh=1SoA513tGN3aAmb85PMzZA142YBG8eRo8pz3voGHIJg=;
	b=CYPAqjglNNGAa6OPW4eZyjaYtdMql0A12PtJKhhnkXq+Pp31l9u5RzpD4jy3/gEw
	wTvPy5BikoL9pjy3EsXlJpl75o2/BzD5z46dZp144SUCsHMYfV5OjD7ldg6oWLLItUB
	prG1e8hxfx4fJxGcNRA2XPK7clXkGkIh8buyyANg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652621819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1SoA513tGN3aAmb85PMzZA142YBG8eRo8pz3voGHIJg=;
	b=jNf7nw0pcnZp3c+vEGcKBMl0jtc3j6Id1GwG31FhFJdy2xKHT+HYh+taIfJ/xe3u
	KGZJ1EugCJ6fZKoSWxIHr6SYgQqadorlbQS2yVUvr2fvPh/VODvWGQL1h0oEcYF4+ip
	fC+K+qB6CtTKdFvwU0pxS/pJEsdtK4Lu9v5hjFRU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c7efbdb8-b355babd-8882-4103-b620-9957161cc6fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d38baed568c8833a703acc5d22669487d2a0a93ce672c0f985e84ec69710298
Date: Sun, 15 May 2022 13:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652621819
