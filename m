Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7DC46144
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 21:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647899185;
	h=To:Subject:From:Message-Id:Date;
	bh=/18gphUFVIJX//RYJa/n+F+iO6ganx+C5Bbap/b16Eo=;
	b=mGL63JfVWSVmfaWRJNvstXyQw/JBfBVuaqQnYtHftazI7CxDKOfGCq0bgpPVncl7
	R8HSOfdhLUSVeB/lgvOHYi6M2sCtyDm+iB/XWiwtTlb5xfnu1ynXEUmfqX57zXdSw24
	kIjRrZOFJD2ZA9W19ohk1TFayLgwHE1COzg2CI3o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647899185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/18gphUFVIJX//RYJa/n+F+iO6ganx+C5Bbap/b16Eo=;
	b=R56KJQnikzzKTl3M/BMaxjPlYsJFWTXmKiM/FcKlEv4riigIV6nVBHe7PnJuKU73
	dnTf5U91SACP+EzGN5/dgJu6YtfVjQVXJwKevnjcjgQStLsZCNH5eZhVaAC5MY7ywwn
	Dhvn1qXmO7flJVn/9aXY4dX77Y/AQuE2Bo92jePI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae720f08-dcbcdbea-952d-4e96-b376-5d614f74031e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e22d83f001fd64af8519995589344a871304dc1303a240c2b4d9b5ad22f9f3b5
Date: Mon, 21 Mar 2022 21:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647899184
