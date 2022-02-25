Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B26A7A
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 09:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645782384;
	h=To:Subject:From:Message-Id:Date;
	bh=K4uaeHKh1CNHJY5RFWWxGP7pgUj3s075PnuZOBOkyoI=;
	b=MjPxlB2oxcxuv0mIsfdNoUkUcUf/U6kZ6qPVf5KnItu0Ap6HyUFkgBhfZznfMy9l
	0cgT7i75E/F0sb5u5w40p9kH1Q9k9tu3ViSk7GwpIG2Da3/lGPgELGP3wrvmiGGkuQN
	on2peSaHut2Bky1e9UTP5ds7HK/d31ddUXpTFgrQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645782384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K4uaeHKh1CNHJY5RFWWxGP7pgUj3s075PnuZOBOkyoI=;
	b=hN3tVuiuc3LEYlQ61Znt7n4bYXMXMWB97lC8bYWIYFlbOD0c/p77IEdE/T15a1/6
	YGICAdHXaafpx8DRf0h0Vz6Hca807+MY0P7qnLbbZ8J4DEOBAonWmdIWHdgdArHxx3P
	OerLK/6sXnOIbxqXo9e25ZWpLcGe/k5rP73SD94A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f30464095-30b87312-3ff2-4abe-9f59-1cb302efb0ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 564074afd0500c8e5b940ea1739410e5cd9231c6e66903ead2b5721d6ff124e6
Date: Fri, 25 Feb 2022 09:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645782384
