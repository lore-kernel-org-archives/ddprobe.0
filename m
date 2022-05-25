Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F77CEC4
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 13:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653483659;
	h=To:Subject:From:Message-Id:Date;
	bh=ekef9JuT/rGQq8u+gvLMBkzJ2Oy745eRCa5fY1CAnB8=;
	b=PD+dxPk/Hv++XXSDbuzofbFIa2RSwk9u8yAVYdKMq7gULsTOBI4a789C5D6yPD/H
	8BrtndCj/l7a4yI+WlQ9chf6f2n7Fmy7Wdv4CBBhCJFdVak7xAnvKNyLin4NpTbCue/
	rPixq4v7p9Lg3bz4VW0qbg6BxLhMHU2KU7OoiTZE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653483659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ekef9JuT/rGQq8u+gvLMBkzJ2Oy745eRCa5fY1CAnB8=;
	b=BnjTj6N8RgpCF9nyn5501GRgFaDT+qLB0ROJt9uvrqb54frjwJGK15v6C5u+yF8b
	ggF9WWvfxxnwiY8uLs15c2lKcFWyN8TdOoS8Oa7Sql/zHE/T5qW8VS1YWgQcvrJ8VtH
	IGykx14GN0tSeV1p9cyGdvhbcYWTgZb8DwlClQas=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fb4e6010-4610300f-1b7d-43c8-a416-41dedd648f5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac617e10abdd60c5e2b8a1c62c4499742d11437d365b8617395bebb779649aa3
Date: Wed, 25 May 2022 13:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653483659
