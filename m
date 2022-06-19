Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088327B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 11:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655636459;
	h=To:Subject:From:Message-Id:Date;
	bh=hp7KlYh2dciEI22T0Yt3KF1rJ7oaLdJHn6SNNi2XJeQ=;
	b=Xh8PiLMS0cuGoy6HQuBxC5U1SHtUAsA4Zk043oNxvKP0xMAh4GBNtHPWQJLQwcM3
	VYBH1QzCOP3ENhMWpCw7c0409GfAH7uuM0YRm1SZujuzDU7j12hQ3pQlT+10RRJFfs7
	XZw41ryyDyH2uDSNQUh8GWBx09BFlA32EXnAVryA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655636459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hp7KlYh2dciEI22T0Yt3KF1rJ7oaLdJHn6SNNi2XJeQ=;
	b=R6cKYlFNCvdQpHk5CNCMOWSIMVGeojb+cfOcy+rKTiAN0QdMTN+oTCs/QHEdXAtI
	ZnGUfbLXPjWJ/8GWL+Fm+SoluDmjTAVRNjzI26JCXUbrv/9PRmvKZCh82xTleyFpTjU
	wnuBr6HmdiDVIEx4vpOm5LLXSne1AlUVlmSePyfA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817b9f7ee8-8756db15-3a87-4ef0-9ef3-55656a588182-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27fc6d051a23deabbfadc59adf05a0970c02bf357c678fbaede0409b41863658
Date: Sun, 19 Jun 2022 11:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655636459
