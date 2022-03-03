Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E43136B
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 01:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646272584;
	h=To:Subject:From:Message-Id:Date;
	bh=ktCCYJVEC3xqz1n5vl4sV0KXZPq6rehxNYfS0O6BFIU=;
	b=QVwlSKx/84uEJSvNvraK6JqLArFTqoI367iV60XwzhjH1Z1YqxeyO7o3SA7Q6MHX
	Ss5R/L5Ij1WoHeD5LiyQpV+BVEeYjmHINladtsmjEXCFAoeNcWP2bi+Dg50st9ABDMi
	LfHS2w66tB3sipbUVoMry/HVLxtHJeeoUbEBzwBE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646272584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ktCCYJVEC3xqz1n5vl4sV0KXZPq6rehxNYfS0O6BFIU=;
	b=aa2x2WUEAxNm7TuKRpe7TD2s6T05LEcYSeuYNZDEltQ+/jhJYrl0iSjbueLwwHSg
	b++TJFQmZD1WMOZCg9nSMw5iDoz6K+3SPej/L1Yz2n99HYRqk9Ut4OMunWJEXOC22jq
	oX/G4K3cStkyEwXZMrFnlq4Ex6js9zckLWKrU6bM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4d7e1c49-b35b4f9a-bc95-4100-9f10-ad58b9d05d30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be091089175886d497d306ae886b4c4609cdfad37fc83b9a748a61613a3a87c0
Date: Thu, 3 Mar 2022 01:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646272584
