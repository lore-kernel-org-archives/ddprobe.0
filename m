Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 914DB2F51
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661029253;
	h=To:Subject:From:Message-Id:Date;
	bh=02EgVCSiWtOzOu0Y7g3y8NuNrbIsxeCyGiw5ERaZdf8=;
	b=cDDXnE0JO8vz6akciqyU1Hl0S8ES/oybdG2sVEsyYUJCmWeaBoklsPQIb5qgn3dd
	ddpZHMUQ4jjIC85VTebGNfXwxg4RSKu8Jy2rO2NESr9+DQx3AObSeYt92AU+LwE45IS
	oc87Mv8TpihLcoCg8ppPaH+dSZmW1ipvCVOH0hWw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661029253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=02EgVCSiWtOzOu0Y7g3y8NuNrbIsxeCyGiw5ERaZdf8=;
	b=eJW8oOuxJ/FggwV9wgV/KW5zYj2aGTgDhndXS1zwSjf6c1VeD0U3HNTgeTulJbBc
	R5m34PYvURLsMZGlZQRwi8Ah240cJKCv9NoyhBdVqgOq4xzI6zZ6VADkOlIaeETPoJT
	fFWUobRH6MazFTg4uIe3gzRrdaOa97B5Zyr+zsw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bd0efe07-65e029f2-d735-404e-9e11-bc10014d294e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fb3b5df03c3f70c9acc2fa0ccda7b0f6dc5de48fcfde5d2de9026399dde4fcb
Date: Sat, 20 Aug 2022 21:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661029252
