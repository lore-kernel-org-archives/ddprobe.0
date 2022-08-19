Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D234697
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660932652;
	h=To:Subject:From:Message-Id:Date;
	bh=lEWnybac9n3kX/rizVR7w6WB3sDlUVGjjjvNN8t3RkY=;
	b=AqnrwYMw2zOmzFYWczzLen68ar4ZpZKFlrWigqUkBzuzQW0z+spGHi7YEHtpopoj
	M/E4Zltj306Ldjjmh301AgiDX/pN0sYRC9y/HLIZabD85dwptBs++P8pVP3XBWTgrRV
	+pFCQmKkqvAgNcLazdoC6yz9hyR3C2jLo3GMh7Z0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660932652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lEWnybac9n3kX/rizVR7w6WB3sDlUVGjjjvNN8t3RkY=;
	b=aCWAUHBY1XYA+THzSJxfuxegQmJkOJaDN7Y4fFZSWkCwBhQc7D3uJFPbAubHc5qh
	QFZXypmDrIgffcvpFgcpE61ooXKWa7e5S9QssdNM1b0lDA9wSYZJXn3uFqKvSmJ3j/c
	foyjBxiFXPR5u/Y5ijbssK9vqvIviaZ9aey+uneg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b74cfde9-d6da9479-1113-4b21-a3c6-0424069ea259-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ee3a9024cc57733ffc43344fc1077402754e1b02f5ae086abd2f869547de888
Date: Fri, 19 Aug 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660932652
