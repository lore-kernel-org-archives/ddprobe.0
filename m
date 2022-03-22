Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED631A50
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647982585;
	h=To:Subject:From:Message-Id:Date;
	bh=+kfa9WEH3ibo1TLw54xIOXjq+y19rMK+jH+0rwe5xdo=;
	b=FDET3KkDkRIs1r7ZdVHlnWslmrX5klwt2Z/ti7Qo+8//5UO5r/ncLLg+1MnEiiK7
	Ai6+y8J6PPJMFXjtI2B/DlcQVmABwP0kg+Qa6lAV8JPjq4bIlxDptE0hxVy/Y17GwDd
	A6Dwjzj7f6oT6zWbJMsN19fFwSFSqpuesrMAMYes=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647982585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+kfa9WEH3ibo1TLw54xIOXjq+y19rMK+jH+0rwe5xdo=;
	b=FJd1uRI1quZKwL1sZb4HfRvPD+xXM37GcMIHyvIy3hkjkI6bWOwZ+q29HzuLCTsu
	td8GJOzMdEsFQJgohPlg8T4KUoLrjBMynRA0uuW97rSy7j9DIGT7jM+OhYJOiucC+KF
	MzGEHLOLfAxA4QnZW+ge2wR8QI/22qt/GwAnJiuY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb36aa3de-3e3bee96-7f65-43de-9662-12cbf6e3d5a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f59c77f802b804d652645e55b94ea70764f0e5a6c1cdc1109828d72700a2e98
Date: Tue, 22 Mar 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647982584
