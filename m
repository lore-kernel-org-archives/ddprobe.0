Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFC129A3
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645449385;
	h=To:Subject:From:Message-Id:Date;
	bh=xIiVJBlm7F3fTGWxG84VkwcVnXJzm3x5gv8uh2CU9bI=;
	b=NYrtry5nPkeiq+PhI4ruUh6otdbEvuL4p13rQk3KDLb7YTVuprLIs9BbOCpOpc+o
	fpOBbum1blIm+J43iZK6ovhXviA0nqpKgFJ2R6S/vUG8ZvCSfpHuOacERudZT7mcJQ2
	Vb3SOZ3eeLqGbqOZq4RItHZmkZU4vQVUpC7RgH/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645449385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xIiVJBlm7F3fTGWxG84VkwcVnXJzm3x5gv8uh2CU9bI=;
	b=R78U1uPtHUm4pYSpCKwqFpPwjR1ajdzMWAKxlhxIY0LaThw2gFKVF3fNWwJhvbfU
	TZRBExgVGrL7WzBIJ3QfSIympCyXX/p2FC/Yxh5EfRnzOC8HxEpTT6xagnK7ayHDv8q
	TiI8M0cQ+aGQsz7asTtD0F4hMmDxyiOvYNB302PY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1c6d138b-040ca24d-9df0-47df-ae76-8430cd0d4f72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7671ea1f65b416d4de8be96b6add25af652b77b1ed2478a77e7c432a82673d95
Date: Mon, 21 Feb 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645449384
