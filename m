Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B017A7C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 03:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648611179;
	h=To:Subject:From:Message-Id:Date;
	bh=hYW3pZDoK4UQT26KniFLq8XfRYFspWYVaLxzHo250d4=;
	b=WK/mnbr3ceWd5kn2exhqR/OGimLx5+W9eySyVjZ0IL7zX/t8F1kmt/KM/x2Pbv+G
	KdCFN2xAlooUVq00uGP6afpU1kc/TSlLVkzJNTBoUO3SxnUIvFum+feH257YOu4GxZm
	ivZFXU9409oxZKkFdrq+MMWArE/FpA21US/3+dJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648611179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hYW3pZDoK4UQT26KniFLq8XfRYFspWYVaLxzHo250d4=;
	b=QZsQJ+AoXQtn6x0O1yEZR7f4kUYcirgpWgJB0UqO7bZqcn0kdP4rUqSsk7g/vvG2
	aCQWTbelYay02j1QAmbI9tbpK/j+AQQI9iWc2/25PzgXdpXugn2qZ90jcXcK4SGEEPw
	/DIhU6fyUaS71vmUt/ZVvBhlI38Uub2tgj12jObk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd8e23720-ebbe7d1d-d095-495e-8bea-2e35901c9b43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d071d442e9e97f993b7d129ba7d360803b78edc13592833c94a70d1081a0859c
Date: Wed, 30 Mar 2022 03:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648611178
