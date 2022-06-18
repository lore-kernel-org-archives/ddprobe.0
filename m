Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71317B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 17:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655571839;
	h=To:Subject:From:Message-Id:Date;
	bh=1rmuRLq1BuaAq+JZA22SmFok2xGmb23rLIu0IyVgObY=;
	b=g11ysaVhu8VNczqOzj1o5Du3FJX5J8kAnYqcQUkMsi8aWnQ+9VVRw9SsdtBZYlc5
	8e9ZsM+jTbJIs1d9QzsMtbRGUgp0D19E5gXk8PMeeJb4hCmZUl9L3o5d9D8/sJbwRyh
	z38H9ECYAVTFuo6Wbv+nSxkqZNFnsI1xyIomf4Xk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655571839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1rmuRLq1BuaAq+JZA22SmFok2xGmb23rLIu0IyVgObY=;
	b=O2H4g8n9Jtwt9DKFwfRnL64LwsHn+YeRRBYFODaoWnR2xJHrfaswc6HBuq6/aiiE
	Xz/nW4SO+pTBd6C3TGlWHFXKQeP+yahM+Lbjc+OLt4Feak/g7bWSNh0nWJQxuVU8F6K
	aVj0BJTq1jaRZWVIOdeQZa8hZyfVkmrshPiBjlAY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018177c57903-1bc6a848-1899-40e4-8759-f8b5d9293ec0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a539ef34f7ae089bc2da7c2ea7e225dc1dc0f6a49f13f41fed17ec56322aef4
Date: Sat, 18 Jun 2022 17:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655571839
