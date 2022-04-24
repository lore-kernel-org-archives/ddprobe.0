Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F180A3D77
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 23:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650843598;
	h=To:Subject:From:Message-Id:Date;
	bh=P3afLJTnVLhVRnSYi+4+DNR0UlRCg40I3wg6dguUyLk=;
	b=IKjx3nC3ggjewFFNy3of/UREqsjWYj/gBMF+dbUKzeUIs18k+vrzNt7n5CsJDPwf
	EOAVyB94zchp21JYvgddfEnNLEYzWCBXp8ILN/oL9vdbtk5KyiUb99koa4IEH8S6Diu
	7yhwdaGp+Ll9V5SCr3GiyJBPicoP/6VO5pj5ZNHs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650843598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P3afLJTnVLhVRnSYi+4+DNR0UlRCg40I3wg6dguUyLk=;
	b=UVoNwculYSLMgbpN5vTP+iMdZG1sB8cx0mTOvCf6XQ/aPXp7P+XcFxu2xDmZNN4K
	O89qzAvYV6WBlDONy1QdFu+9fxO5fWF6P+1KphwfnPqo/H+l16o7PYFhLpknnJlgRHm
	0pcMtKeG3W7VVxRBz+e2BAZQhZMnXnPT6eFkzZ9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805df23dd4-6466cccf-5130-4b48-9733-6e4ede1806cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69b12087364824834355afb242de7ed0940b6e217ab3b1f245409a618f602d1b
Date: Sun, 24 Apr 2022 23:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650843598
