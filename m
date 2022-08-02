Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BB17F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659404452;
	h=To:Subject:From:Message-Id:Date;
	bh=bNmUDFwML4MUVwAZQ6aAxHh7xahcY7mYACWdQQEpZqI=;
	b=SL2iAIkfWUHbdVvyMIeXZVs5Amw43RhBxCWfYa3JKvl7YA839zK2+bkUuP4PWz4/
	SY5947I1M1lD7VT2kSrviOih+7osmWA1XdTr8BAXwjQulpUi+MT7IFKskSmZO50VTJ+
	fntCqLaix4g0wUZL4sM9vX1bfay9jvSIFiXcY5mw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659404452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bNmUDFwML4MUVwAZQ6aAxHh7xahcY7mYACWdQQEpZqI=;
	b=UN0io7SV3FNHJ9iM5SZbrGufPQD/SoshXjkDdU1R5WGnKzGr/iDvavdpH4fQfYhd
	aTDVIv4PwtPr6oCHjCB3+7E25a74di6EfoLUkwCpJbUvuH9U8i4NL+5ZihsS30ASe8h
	BPdpkeOnk/NQ9VnfXqpUkzW4u5+hzicANGLretYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825c3682c6-fba3192a-005f-4c89-ae33-a22489054c9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e3045e77224f5143acdadbb40945fa4e252ae681b4a0b032988427da9fbae53
Date: Tue, 2 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659404452
