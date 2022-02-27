Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB4B2F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 10:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645957584;
	h=To:Subject:From:Message-Id:Date;
	bh=oXJxzhZEe9tYHdm0hn/Nz9YCvu7w3poWN4bBS37P5fc=;
	b=ds23Mcg2pqnu2d5x+qLNOSO9so+pxHdC5vI62JW06RNG3NbTcJEASnOvwHXil/VB
	2jQUPiKwY3cA3f6ZntIXSKUyqWmQrSy1LbC4IMXnwRCOmqr7F68IUAvYkas6yEqWxQb
	jyTiPgH568nMso0+P1xpn8dFaMJ2IjtIVYuGh/3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645957584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oXJxzhZEe9tYHdm0hn/Nz9YCvu7w3poWN4bBS37P5fc=;
	b=ii6ZDZF+mXqN0+7cqAYUFluMftL+wXjLHJRQEMnzsDY8XQLdHnxYR/axUOQn/Dgz
	944eNJnUT4KahpoHKnYe6uyKjjpjnowrqZJyxJ1kSZtZJ7DsDoW9ODtY1D3RQ3P2eOm
	crLm89aaFRoRsw7utTDJRiZVK/pFnwswiFsIIeoI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ab79762-a20c4a09-53a4-47f5-bc22-5572f8de8f33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 466e08232b8bae4aa9d52a313fd83669879e40d71eabadf1d1f731f21315cac9
Date: Sun, 27 Feb 2022 10:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645957584
