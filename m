Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706D87A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647739284;
	h=To:Subject:From:Message-Id:Date;
	bh=Y6ZBLNQGWQzWCCyGWFw1abeCiuAj8+GgEsNOPysSGLY=;
	b=PSrmEsQKF9fgCoEKdES/85h+4rBFZFDTJioNRkgxD3WdFkvsWLZLsiqLTZdeeyYu
	XmhlPxGqdYyUTqn3rU9EuXiGWg9V7/4C+QhI9mJqnbeUZ7S90uoYnzlKcVrIpntHVmQ
	E4P8W3SvGJHjX8nKQxEUiWCjbJyc092gvEm7Lnas=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647739284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y6ZBLNQGWQzWCCyGWFw1abeCiuAj8+GgEsNOPysSGLY=;
	b=RYxWHbbDjr4bZFi6pZ+jNsSAG+P9vHVfm7b0zocWnSp4cwt7pX+9cWbls2bbj3Fc
	jxTGN2+JjPoJB4pH16QK1trQfM9FrmNPBvgoANwH0Pui7lZqv/mZ8vl//O8xrXZX3gt
	5HIGw0WYk9ngfZdubvzuiP8430PESeU7JUn6nozY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa4ea2d22-0e5e796e-f84f-4758-830b-9793285b6a81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b329e6c629e7595c59aebbeee67e7a328ed0d78f8a9e981de4a90e0a5b228568
Date: Sun, 20 Mar 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647739284
