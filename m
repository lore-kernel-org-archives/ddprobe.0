Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9041C33CD
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660326653;
	h=To:Subject:From:Message-Id:Date;
	bh=cvm1Ke69GFliSi6qOUn3klz8c4RtmZuttqPjPu5qn7Q=;
	b=NLBisibkLcssKdtoORx494+Z/aRiBK6GTvMvKzIk2ETSnyTdVjlM/WHmZM+KqcZC
	shvV9XOFnCzPfuH4gXg3nd6NrHSWo+FB0+DFPauPHRiysJ+6tJdcMUNcymjORdkWMCQ
	0epF86sLc7CNMJTX3MhMRhZ9gJdu5TRRobWEnquU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660326653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cvm1Ke69GFliSi6qOUn3klz8c4RtmZuttqPjPu5qn7Q=;
	b=AA82mtU1LpQgghAf/w5SsBvSYG9PVH1Hmb5KNAj/kS6sTUNZP7UIOr8l1bDo/W2W
	B8jKG5UGWPdiGe+b0sMalzypVgIVWti+AQwyBY+HHmJrdGJExDJllZo4bsHkSLODjPj
	C+pj45WTX+162Nt0Vyo0ci5j2VDOiF+h8yK5fVKY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182932e2ab9-d9a3609a-4711-452a-830e-1efc2514ed65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcedcbd30f57e947901bd5c266197c03d00abb40e50460fdb66ad23fcee5fc86
Date: Fri, 12 Aug 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660326652
