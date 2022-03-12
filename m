Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76FB32F26
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 17:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647105084;
	h=To:Subject:From:Message-Id:Date;
	bh=nUW02CNgYF/v1h8eNlFnP5+jVTq59N9PSCX1rzAbetU=;
	b=b2ifPrg5gC1FLgNSHAv/gGy72auy0K6YMVOca/NU2v8B49WkCwdkKFDD4pAdjGCi
	YEOMlA5XRUfCNN6aahlynp4ZWAI76aoklSZjraHlNFiq84se9KC3g7/L8/hGhjiuS4D
	WhSGeDElw33fT8fuICWuIEYq9ntG78NIDsbCpT8w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647105084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nUW02CNgYF/v1h8eNlFnP5+jVTq59N9PSCX1rzAbetU=;
	b=ACcGLa+jWtvZN5FIjYlWuU0aCp/cD1VkrUcJeq35G1ari32ASxASz03sputMsIVX
	5kqx5Alxe59zY6f8CV61SVLKmr/v5Hs+w/tsw5O1UUR3spnR+5euMFg6LhIxXgoJKd8
	3b7llEbivf0k8BpZcWjXGxL9S8aRc5li+xjyrD3s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f1d0d40-9bd290d6-2988-470e-98c5-f230cecf8a9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3538870c7c76b5012a3f01ff53c9010ecd341f2d207597f631aafa9e8661abfb
Date: Sat, 12 Mar 2022 17:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647105084
