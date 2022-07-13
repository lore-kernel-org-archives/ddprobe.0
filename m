Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2969A15A9
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 05:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657691812;
	h=To:Subject:From:Message-Id:Date;
	bh=oVbsNJiovU+lWN/DiPnlo8CaR/rtwQXUcYIswq5XdXU=;
	b=hCWuyf+sf4mRVYRn788bfdOG8fq9+wJSfyxXsho2EpLTOJ+ToJALk/rBRG1zyEea
	5t5Fqpuj4N12gavKnOCyjwl3qKAn7iHhvL5YtrByz0EvgJnvg+oC28L4T9sY5jyBL/2
	B1nP9rubHvcx/kgafh8oamgzthmUibvz/PThTYt0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657691812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oVbsNJiovU+lWN/DiPnlo8CaR/rtwQXUcYIswq5XdXU=;
	b=cKbVjBkYptlR/2rPKEJBE9lllQ+MKq3tMxA6ER3JD36O178/0t/rVO39Qln0zS1Y
	wFC3YIdDeIdAIPpSyFmpcARWb5lNQX6E2DHGfF2kJGk6fOGWzPwzQg52Z3QC/7q+kDl
	7GVMHwja7D2t9cq58+PwzEjHNM/Vbvcx9TNgD4CI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f621b1a2-37304a63-e555-4956-9b23-69d67fd4dc3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60395a117cc01b89ad0c36d8d7ea29f8d4d3677fc9e3488a2075819bc7a4e56d
Date: Wed, 13 Jul 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657691812
