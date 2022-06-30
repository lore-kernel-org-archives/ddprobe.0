Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9C4EC5
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 23:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656632812;
	h=To:Subject:From:Message-Id:Date;
	bh=jYLxujCBcwFdlXUN1kmt+7kM9ev2UAt0oqr4uoRb9nI=;
	b=G5OGaXBS5vlB+DcMcO2ChkI+7DNU5pXLH3+fdseiApxLaEb+cSpuwBwSwxkSvgoh
	h92Gusj3KI42kuuFH7O705LSn8/lN0qWihHT1kB9DbpU+eexDi7dtlKu5nFgsOVdtMT
	KFqeNFaj+0i1gFd3Rh3u9dvl4RbLWw4fe1dZRSa0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656632812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jYLxujCBcwFdlXUN1kmt+7kM9ev2UAt0oqr4uoRb9nI=;
	b=GDbVr9hG/DYXo47uuDqwU9bLatpyxnVcxiVxASzG3EhVOr1EtPLb1pQGvq17HwnD
	8Kn3jX3N3GiBir/nbEBkFrKHJ6IEm6i3wG7j1xT/HJjg0GTyKZ6V4ze7q/9Q4itYmRE
	iDAPZdqajhkZMJChz2VGqBeIUfY/lDJJBc/MOsg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b702a30f-0430f7e0-d26c-47b3-89d3-88ee9a2274df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43ff0c3e245d442adbdf8d86edda82d7f4d4bd73b8fd60738c4ba91fd8c3eb04
Date: Thu, 30 Jun 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656632812
