Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEDD76126
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 18:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647886285;
	h=To:Subject:From:Message-Id:Date;
	bh=2CIm6h40XheN8IgBo+O7Wlnnb7tSr+1K21Nq8JUzDos=;
	b=QzsWtpB984od9x8Z1tgVxBkPP7x+jky5wrUyPPB4cmuToSgPq5R7lnWWsbZR91D7
	QDm/hvZxINNMuT4JfHVC1+eqva4Hzy1r4UygHXKr5AjuTQmBlQfNN0vpxuMpNLp0IUC
	e9/sOXoWFgcrKMQvEeOh7FudeN9fv2WyETHVwu+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647886285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2CIm6h40XheN8IgBo+O7Wlnnb7tSr+1K21Nq8JUzDos=;
	b=cbnGvwskOAzaIGmUFNhlEHWIunRu8qBA4rAIzIKOKBq5zn537GUyGsdh1o/vHIcK
	Sbo9bFdNk/oNcutsZOwSLtrr4oeGuH49BL7Yv7EjjrTicudpcJSpZt67ZOuOeGgC6PV
	0b4f7lLn28dcoWPpDoSFp/3HgWfSwbqaasti62bI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fadad3859-6a18bd98-a1ce-4f52-88e4-69f4282550f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4590debb1f3775a75cd21c74b6cf55b91d0d1ea2d84bfa271110ce71c51f061e
Date: Mon, 21 Mar 2022 18:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647886284
