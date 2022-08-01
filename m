Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCBCB7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659320453;
	h=To:Subject:From:Message-Id:Date;
	bh=wzDc23tMhkSoj0/1DYgGuudERuVl97GDAqaya0Hhsug=;
	b=LHaaVHoc+VJbIKH8SfeG+KMjCX5YJaru4tIiuxplvI7BgJxjDbZYQwdLNwom+VRY
	8K8z8Xsnc/chjvEgsfJSq6EIviRjEQgfeTY/CSwCX2lB0vN/XOLBeXMMrjyjlZ3u8VR
	tObu/D42OLQba3W/4h1NSVId92vXS4d9UfMuOWLc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659320453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wzDc23tMhkSoj0/1DYgGuudERuVl97GDAqaya0Hhsug=;
	b=jNHjLDpi4EznL8bEAdRMkTaqDMlHoxN1uhhg2I9sF9K/31k8S7BuACtBA0/pvmUI
	MxAOdKwSJVQPhoAqCwCZXIGG/NcKOQ1kqfZNtzQLRe8Ev7sSqwMyV7Di4oIIzKlDZPO
	vmOEwTHHQ/AwBszebkudwW9ZsecVClCCCrkwS2aA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825734c5e9-14c16ebc-7ab7-44a6-8b76-ad693811833a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af55f52bf7119b15b69d454ac253d24af0facdca5952c7229964ce2abf2be3df
Date: Mon, 1 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659320452
