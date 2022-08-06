Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92BE31114
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659775853;
	h=To:Subject:From:Message-Id:Date;
	bh=ZDeN5hA9B2QhXMaX2+yTP+1ocSxczojchys87LA5CJI=;
	b=CgkHKK4Eo6dEml10V/bSUQ1f1KFEMbZYcxwPdpq3fAhocOQUyQSynixuwb2YXZ+g
	zmA/NTUxCb7bI4lHvWIjLo4toRdsgijk/mVW0k6D2xVNHs6wt7NaefBPnApwkWLOHo+
	kurY4jR2SJ7wgU+v9C/JIq3JSlta1pQd4o8kTr4s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659775853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZDeN5hA9B2QhXMaX2+yTP+1ocSxczojchys87LA5CJI=;
	b=hlkV8LMUi39Fo5bCFxsQYILoQTppxZ3c0ow2SYUvN1wxD6Xc0+dI2xMGFhD3fr2p
	0hEvlM0LUsrUJrF8UGN0GvhT5mEY0pyS0a6RdM1h42ttZqC4ns0daIYuAmcWXsKR53B
	dhXUPVHpGACljNwH+8z9otHxsrIAlvuTdc0iAOIo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827259a0ab-5482908a-3f73-45f6-8d59-c4ca3c3e1150-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17933a42a37495b6cfddaf82fc3a7f68208a6ef080dd7c9e5e378e66b958e591
Date: Sat, 6 Aug 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659775852
