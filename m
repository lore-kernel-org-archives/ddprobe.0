Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C011364
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 12:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655122379;
	h=To:Subject:From:Message-Id:Date;
	bh=rD3gbciz8UvHGy3OXL9LKmgNrYYj7IAMEhe2gxxnGDU=;
	b=GPBGyFyQZZkqGp5kD9E0F91LuEhOj8yqDF6a6sz+ee8w2KfGrjCEvoPcZFjJGU3o
	xLxHPXrgxYoHE2Aa66JW+/K9WZIAWQHRI0eKTGZcTOEnynpl/pmlPRpZCoIv5jMwSPV
	cF5LGux/DaRO7hglHyM313tDx/0GdAL6Lgx8NBjU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655122379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rD3gbciz8UvHGy3OXL9LKmgNrYYj7IAMEhe2gxxnGDU=;
	b=BrKuD25E98TVExj+PIKvwWK+UJFlX3Sz4QUXJLyOVcqKhmKUeeI8ea2qukApzIiC
	135Nd9/5TYbLoyxre2KtiWzPr7bgw9mXdA3WAAhIx+66c7jDTneAl4hoar2LUQjE0fW
	0yltUwUjh4+IYjhCQ09O/ZOM9czYoM1sOWRdGmrM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815cfb41b8-7b685535-257a-4fd7-93d5-4d7ee0b8c967-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e627bdf217c2ac53484c7fb4d40b7aa82144d56b2a10b732ab0adbcb61dbeead
Date: Mon, 13 Jun 2022 12:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655122379
