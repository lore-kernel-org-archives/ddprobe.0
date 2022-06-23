Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9471876
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 11:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655984579;
	h=To:Subject:From:Message-Id:Date;
	bh=K0o3SIUatW7GKo++BWnggnK+pEccXTXqWWM/+bKi7N8=;
	b=CuYvDEH98dRPvRnWDcO5lwl/jiiRBDBW17rnLJzoobym6rX/vioi3gv6Y41trYbV
	hiSpgjxqu+qR1uCYplnzLwfZBdErCYSiO1x5RXwRojCcmYH37rpU1Deic9I1tWbXls/
	1d5ORllwE5iIftItHYml5WjGRLeAtADwooHLPJUk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655984579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K0o3SIUatW7GKo++BWnggnK+pEccXTXqWWM/+bKi7N8=;
	b=jknBX3VjFoPtlrFGKFB9ihsXTEceC5GCNvzXv0MI0Aap00NBmWudcGS/wN2nmeCL
	PYg6yPFxRSxtz/+qJwgIhYDKfPvTVQg04U0LCCeL6p01ksa+cdIUH/eC23SB1eLtbVq
	tmm5QWGpIAg3cb4Hammj2KwLZ5F5bAfPqkA/5pRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181905f62e3-1435f781-5607-4a91-916b-25a4daa3ba88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cac907084e77839fa244cd7a424c04ddf0d7e9adab1937ebc408af0a23f9f11a
Date: Thu, 23 Jun 2022 11:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655984579
