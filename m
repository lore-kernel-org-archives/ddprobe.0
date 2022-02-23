Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D752F5C
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645649785;
	h=To:Subject:From:Message-Id:Date;
	bh=sH7qKcgWgBYoysYRtYrU4NqkBggDB1vLKyTTDCZJcys=;
	b=LDFe8kK5aaPW6Y8FRvVzF599bMYY07zWVpnuODBh69HBCcie55kr0K1taEtJNVj0
	tpdLUKFlRkZ5h+fUiUxJTvU54OsLSKrLemkW4uxpjCNcHotq5QHEW07ghU+IBJG1vgD
	ohVuhRN5GZVZHAc1/H8LTLTSTydICfW88eoPzB7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645649785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sH7qKcgWgBYoysYRtYrU4NqkBggDB1vLKyTTDCZJcys=;
	b=NAXRDTWs01zURIjg4/2uNI26th2HMONE0DVdNtY4fhdTG9o0qwnvXbw8wBBZdAtz
	2gSeU+qPrI0fGqPQHtun5bbZr4sHYJ4LIF9Ytoivl61IJ663OTFIJV9ErzxLj1wE3Lh
	JJIjURPK/zVYFqUBshrbFmfxjeDYJONpUIOFJVHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f285eeffc-c34e9385-c12e-4720-bff4-875a60e6ff49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7861b99df81348ab7e5dcf362b49dc1b1b49c8eec793027082963bfb73ee2114
Date: Wed, 23 Feb 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645649784
