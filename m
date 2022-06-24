Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F65291C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 14:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656082612;
	h=To:Subject:From:Message-Id:Date;
	bh=9Gl+4U78eURvmD0FhzPYLey+3qIijkEJm/jRQ9lrV+Y=;
	b=e91qGLopier53XYJW9VeeW9px07CoKUx0DJ6i4Se5iyu5VJYr5qXK7Cbg1q+yESa
	u9Axd8T7BfhvNbWbcUD78y8a2mY6O1bIU0AYX7mXOrwRnJmPR4sfuZ3/CIKE0oKFpYb
	lPXiZNo4KzPb8OqPoi1gEZtzBfeu22vkhIT3lerc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656082612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9Gl+4U78eURvmD0FhzPYLey+3qIijkEJm/jRQ9lrV+Y=;
	b=YdERTOJhWlkyrcf75pL4m/orBOdXSO2OPqDO7HLpcwyIvvBpbYdROpk+klfsD2B4
	b88tWqKaMgqgWwHuuIBjEqYPWThiRjD8jwjtdCOY6Di61t2/R5tB6nCUSN1CjhMZHtT
	wT8xe6Cc6Lngg8n2IPyjqiXs2eup9IUdqC0znyVg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819637407d-2857873d-11f6-4e4d-acd8-ab41523ad660-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89d7d20427e8cede7c94ee99abeef40f87edc4d2e01d6656ed73b5e741a992ea
Date: Fri, 24 Jun 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656082612
