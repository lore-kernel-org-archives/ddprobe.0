Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57467B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 18:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655577539;
	h=To:Subject:From:Message-Id:Date;
	bh=zRjwrN69qqDZxSd1HpjW+w48dhKLwSbxvQzhBX6gs+o=;
	b=HDYlJ6ttO+a3uIGMOcRtwqazRPR5WsnDRS5LHwZ68/bo0Z5l1atTeR61fYUKlCT9
	kfU9wut2NrSaiUrz0OWXfR0Cd6pFZUOvOpSXy6tnsJB3kubbhokutVdlx8NyobkE/gR
	lKRaQFbOCi91ifdEdOpyiaHbglmogCLpxhHRXvOI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655577539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zRjwrN69qqDZxSd1HpjW+w48dhKLwSbxvQzhBX6gs+o=;
	b=jkJLOaI+fcaTY9+F7sqF9o9XQ4q+qL3fFAxSreemyb88x8Fv8rxv91pdxlgGu/UB
	Xy6WK74LXyUuHzkozban39/3zeop3QQUd6Z2wB4WL3XI4PQ1sUDnp0TY4nbK4//iDGu
	IXxbfNgPDlxweDZf4sOOXIFsGVSj8d2XN1qPG/64=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181781c72dc-30a1bc1c-e619-436b-b160-4d8eb3987afa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d45dfa8d3672274c7e9294207b0bc969a48a8007def2dc0fed84a451562f1807
Date: Sat, 18 Jun 2022 18:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655577539
