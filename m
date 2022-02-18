Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0AC74C70
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645211785;
	h=To:Subject:From:Message-Id:Date;
	bh=jkfwJUw75OEcoiF8odpjkfuIMXATK3PSU9oyz5ezUhQ=;
	b=eHbQjuY9CXbJ6jUl3/ntN3T5cMoMrTfgidbXfMM/QQeBTrG2V5tMsBQh4u+wIYeO
	3t0HzvTWmcLw5acCy61kzuwIdxMMdjPSd9lIgDwnrMUVhrpW6dznzhcJoBTRxvJSqes
	ab0AexmlIcOfTrTpA5tYv/wBAWt2llL9qteJszuI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645211785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jkfwJUw75OEcoiF8odpjkfuIMXATK3PSU9oyz5ezUhQ=;
	b=aO41mSjdybFQf7NeFt09/wqSOVBaQGbSlI2ZpYA0FaZRlOzGcJMj6wrwCjqoPhdC
	vTzIdqMf+QtvE9csDqWizaQo4XYfviHiBJ2t6eRlZRZB2mhDX9M4SzNPQOMNpWvTVkO
	bD/dITxPNOmPFQF1pdlahhktrol2/8y9yx780vew=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e4396b7-aebaa029-c81e-4ddc-a870-e9af4a0eb280-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7e8937f74546ccc37d92e9eca4f744116ca467972bf9b80754d106bafa5c2e2
Date: Fri, 18 Feb 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645211784
