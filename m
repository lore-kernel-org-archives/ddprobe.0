Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC47C6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 14:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647960685;
	h=To:Subject:From:Message-Id:Date;
	bh=nJNGAchDmGIyfdskW/Vxb8KvY16vulbMlHHYAmcWQ+4=;
	b=E0GBPNaiBzQf1g473fq6/Eufq53i4ovR5xniS9Fzx27NYute681l+z39c0f4hdh1
	w1DJ1y5it6G0OToQxkQh81P0QhJYhuA/v+EbBkztAjyaC4/mSbymjGkOG2kGnlSRN6p
	pxgCH2GNyN2hGxMAWB4xnvqzslwohdZhJlnTJ6vQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647960685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nJNGAchDmGIyfdskW/Vxb8KvY16vulbMlHHYAmcWQ+4=;
	b=gc+oUziZv3vRQ+a5WVojk2c+8by6Dhk6bA4Aan+3svzlnOxCYPD/HrMhwHmHn5VY
	Sq8Xk4vgoZmHby4UnCRyUnoKE9RRYbCdo7H1hUEyYsZ+l3q79aNjLK+vcSli0MgX9hC
	bqY6QAvLGGxMnEPrPLs+Lscrfi0xrWfgdZWw1N8E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb21c78be-793b1e6f-7b24-405f-97e4-5cf5dfbffff7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ed6d7ae3d9c1438cb3d917fea424e5e08ffd2ce590ae57728c0cd26302271dd
Date: Tue, 22 Mar 2022 14:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647960684
