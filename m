Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453D7A3C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659682853;
	h=To:Subject:From:Message-Id:Date;
	bh=ipatJeXvl5eaxQZ4LiAbUv0risJlxxvVYmzRSxSAqps=;
	b=FW3EtrtAqS3o4mqyT1oC7QAIjHwEiObC5Kb7i1dKOIzsb/GXQHtbhSSRHb29t3LT
	M0rQlwvOJsyPnTfwSU1RKbYLw7gc5il9ipNRatrgo0DNseey6cRK1qMEs+8DnhUpBGx
	0KutTKndtSAeACukJ/XCn/3UZkz7ss5xrZ1PvCaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659682853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ipatJeXvl5eaxQZ4LiAbUv0risJlxxvVYmzRSxSAqps=;
	b=KHAK55Z78wmix+XPO5EILHiy9WK5PorydDyuwLoUMPjqNHIyinBFWfZkbf5lRIZR
	ZfmjfRT0erl6OUxJpyV9Y1uJ7o0fJkdXCW5rjnA3Yx+iNb/9yUWFLkQWH3qIQS6Mn63
	/tF2ZVUjaVn6lB1Q4GctuUn06JQve4L3+j5Rf7pI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826cce8eb7-455ab4d7-68a0-4efe-83cf-e56e5e7a0be9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45ddad139284d2bf08d5024656e1f58f143e5a36287522e9d16e322da1f12afc
Date: Fri, 5 Aug 2022 07:00:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659682852
