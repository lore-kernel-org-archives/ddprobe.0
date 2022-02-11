Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3567F
	for <ddprobe@lists.linux.dev>; Fri, 11 Feb 2022 22:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644619842;
	h=To:Subject:From:Message-Id:Date;
	bh=OOX9O2CX+CCM9XFqBtt0ZafbFPA9OeeSpfOTXxOSkD8=;
	b=LEPpJ7bFFAZ8UbNfCo0VkAUbZgHKRiHj8y9iaOUbUBD67TYNNdXaxRlxUfOhrjL2
	eSfKLQ7oQ9bb/SYaNn+nz5LWy6srufbeGcB0FfbXaF3Z6sQdOASOcNXs381fnf9gDoW
	rp2bvl3UmPgaVFIBEh//FMT2YKvGgvyDrSvAyCu8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644619842;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OOX9O2CX+CCM9XFqBtt0ZafbFPA9OeeSpfOTXxOSkD8=;
	b=YWVq7yEv30ZWcrD4HMqJUkGNrIgd0Zbp0m3p9MMoUk4HaeKZW2t4foN0d2VxjEt7
	Q/n0hdi3DbmfkadvJ4cvTnZX2vcoL9XsBago5JbEaqVS1wZEhShuEvfgLCnC9i6ISrd
	HdjgbByxfCmul+ZfDSVZVqJJgqtbtN+QbZhhnxiY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeafb443d-d6257ffa-f02b-4182-bb3f-15dc92ebf4bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d93e8d291bd5387910753ed0ddfa1afdf195d0a1e94b76acb0d6ffafb7b822f
Date: Fri, 11 Feb 2022 22:50:42 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644619842
