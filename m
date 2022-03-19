Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4D7539A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 09:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647682284;
	h=To:Subject:From:Message-Id:Date;
	bh=rFC2PQQUWWc+fmabs6ua8KXtAO4AB3SLHXDZiqiF+Ng=;
	b=b+bvzLHbSPKeE3tjUgthybQRBkZ67OgOUIW2PTYdapwMdD22si9iBwKmIAtGCNrZ
	QxzaoiuK685Fmy2T7nEvNAyHBkip3NPCYIYKrn4fx34GZH4+poOZb1RJa0AyK0WDmzD
	gQoe/MfMQD6jmh+WhLWvmtHfuXNGrwB5o4IIXezU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647682284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rFC2PQQUWWc+fmabs6ua8KXtAO4AB3SLHXDZiqiF+Ng=;
	b=AjHCd7648bPBsOdk1SNxxH3rWhAJ2uMnHp3nxShFEi1X3rFY1Wt/SnQXdQaJJX2R
	ViWqsxAk/ObfuXzwuJJwzsSZAGnOidqk0UOvoyEOGlJI+AqMMkmK7IHHG8oUMCSGAyq
	L/adOtPxt9QKWOhHYL+bKOFkhQDY8hW6nypiv0wM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1846cbe-60b4c24d-448d-4755-8bc0-49e1144ad98e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1da87ecd0ebe5ff6476fc39d333a4311680082e416f15240e77f094886092f7b
Date: Sat, 19 Mar 2022 09:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647682284
