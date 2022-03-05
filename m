Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755A71B71
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 22:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646520984;
	h=To:Subject:From:Message-Id:Date;
	bh=NJ8KtQMI4q+hjowsQNHb8Itk//7j0Vf/oB9RkoFy0/A=;
	b=aSbatGfdCP8/ga6seIvFAINOzhcPt1eOFAnY+5yAKu6RySgKOSk8CazsIFppYCth
	xcrB/NqVotQGJEXKKz5j7jZqq+Yw5xm1cgut1kAD5sz7WZ+3RSnHQrVqaNfz3cHrUsQ
	Xdg8tLUR+bxHsfwQEXx4R+bVl0/5KEVjht0JDUU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646520984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NJ8KtQMI4q+hjowsQNHb8Itk//7j0Vf/oB9RkoFy0/A=;
	b=X/Zik/oag1X7EgGmB+0QzM2Flujhad+AIhNbyvTUL49PEuUaTizrq54fh9lJFPR7
	HSbdHAGDpy1mN6Z7JtaFV8s7Avs+4asBn5+qB7fFX7pM6y2IgoH46vx7R1gJ5ynxIit
	1hLdPC+054dkln69k3Cvd64B7u2bJQYKLkjBc9ag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5c4c64b4-57ecd252-9eb8-4efe-8b01-52677e68ce2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7aa752e55d15597d36adcc909dae1ef444200c93298b6865f85cd00ab41d981c
Date: Sat, 5 Mar 2022 22:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646520984
