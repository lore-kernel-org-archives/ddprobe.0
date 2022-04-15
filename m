Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC2D7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 20:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650055078;
	h=To:Subject:From:Message-Id:Date;
	bh=pA+FbFl9FRDNeCOO9p4pet5qu8IbTF/eqTmuqkZE9zI=;
	b=gg7g7JUqtei01n4n8RO88JTmlj2ES/AJcWouAGQ4g+BmhJjObxuVpk1utB8fPowB
	08N8XAVyBIQJ2kxGusTEPPv4NDb+iW+WQkCnJ/2HieIyxUSDAXSL31Qns08/g0ms3WO
	W5SjDhoTJS2SmVCB0ygmmJ1MTtkW/KI6CHO9G9pk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650055078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pA+FbFl9FRDNeCOO9p4pet5qu8IbTF/eqTmuqkZE9zI=;
	b=jlxW5oTdKQ+lJiYD0zwF0wmownDHxb+hxZXxz1WFGTUluSUCJkoZNqIfxhppWGoo
	x0wAuUFTeZsY4mF0kOa8csnhLkceYCtQ7N7sojFPf9k7aQM/uCFZG0VOwl8l2v1r1J8
	WGcPhTgZ6+PGPyCG0shOPh1zYdq27b/0jltUmYwo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802ef2619b-78e0d24e-d96d-4b6a-b96c-e8643fa5b544-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ea5df0fb5314fa1070237c19f326dde314fa7441f8bb45dd890ebaf05f71bb2
Date: Fri, 15 Apr 2022 20:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650055078
