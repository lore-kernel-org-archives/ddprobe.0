Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72DB17E
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646673985;
	h=To:Subject:From:Message-Id:Date;
	bh=jVaw2gH5cptRXPe3kHYrhfEMHHQgliTePrrZgUB1nFM=;
	b=UdK4/FC9m6MKgXHrljrvaa02Y1e0z9ocCeeyhPRzBjiCw3FNrwD/E4m2hmuAB6Gy
	WWxDtjn56pY0n+d4fharTgVfiMI0mRfVazfmi6TH57es1oWGGOYXycApfwRdzVJJ3/Z
	Ew2UHarQj5C6ZDpyqz2ByaPPKtHJCfe4fatQa7mo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646673984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jVaw2gH5cptRXPe3kHYrhfEMHHQgliTePrrZgUB1nFM=;
	b=NgwfWVLOKvubV3HlE84LR/hGze1whws2CuztxtK6+i+oK5SP+o+fWKJ5ZAJK/uNo
	AqLLTT8kJhIuS0bZef7beOU2S4/j+9fLWtamcqX2i6f6TR+7/acgqXSy61SNznGAYQ/
	8/ObK/7KoXcIa2FV3XhKVc/bC1zeI7SMj2eREqXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f656afd56-a8ef70c4-d444-4892-9c2e-cb7fac3bf22a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da1aaa86f95858e8ed8981951973313face8398a82d9be3df156309effb46dd6
Date: Mon, 7 Mar 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646673984
