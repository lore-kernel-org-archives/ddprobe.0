Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1139A7C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 21:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654722599;
	h=To:Subject:From:Message-Id:Date;
	bh=JJINgyUiHqaDQXZ3gu0bAmCIIFjUw+xypulZhqmLUuc=;
	b=G043sjcYti7G3eQIQTl551bGqg5f2tvkYOwaH/WBqlbNHM/NY7vOQnLpviLCjWtc
	2CwzU8/f9zDG5zWd2uFToQ4jEvcktrp8EC9X1dgknQjmOxCkLn8zwNbl+Yqr+TQi2pz
	4hU+NmmBlqP03CijqpfE6yhbdd/9PcXynHF2ty90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654722599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JJINgyUiHqaDQXZ3gu0bAmCIIFjUw+xypulZhqmLUuc=;
	b=M/r0ROwmAYTGnDNhXgE1gv0/9mR7a4NPeWr79SFhTA0EZMZ1css2WTASEVmrclf3
	fhngEaofY94fnVQq7ts11+uFPDU6tu+5I1lH4RHmzXJ++T8drYyfd5nuBbsLUkO9Gq2
	T8i8T5dmEb4Vr6WEl586pKxn2p7n9c507H6y4fIo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018145271971-12cff0e2-86d3-4662-9aa7-5904b04dd55b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d7a42acd486de784493e0ebb81c89f8f210b2f62c6507cc6202d3f41c6be90c
Date: Wed, 8 Jun 2022 21:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654722599
