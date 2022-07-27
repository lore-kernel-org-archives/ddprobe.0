Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E6587E8
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658881252;
	h=To:Subject:From:Message-Id:Date;
	bh=/C3U69jyXeOAE0XE8/NyslssJXqmOwSH1LTdbUAGIqU=;
	b=VLC38cds0lhkGvUbtwAdCgur2Hbz9LQewWii+D6UZDh84niiGoQssoGroTZmkMZ4
	h7VcghyXEl/MAxPwo+RVfqijR7m+13zV685PdqPveFQzpeilNa4771CAWCZNkcBgTrB
	SBFWl32MAiHg5mnX7JD5vQTIbdR8CwX1geA/F0Vo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658881252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/C3U69jyXeOAE0XE8/NyslssJXqmOwSH1LTdbUAGIqU=;
	b=eMep45p0cC0eqKpIZNCbQ1V+YDW/QGebcq/aoQGFs+z+ZUYj+E2FrFFfvLZAAWC+
	j8bs5+cSyWPYxNYmxOSB3EJxacnDLkXtQB+oUsTn8sUOZZveV5hfhCjx+CdOlzKlKws
	JkC4d1s+tPqH4q1LPqIiAVrW9HzmKyXc0ehTtpzk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823d071cc0-2191fdde-5852-493f-a66a-6d1a1946d9f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8aada0ec8ee5af72e38af8c7c20a48cb7897f7560cf6310e4ec449d4b9587a31
Date: Wed, 27 Jul 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658881252
