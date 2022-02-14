Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91BDEC80
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644869785;
	h=To:Subject:From:Message-Id:Date;
	bh=2W+MsCnNHuwSEV4QYKSmbGwxyvXDQqFZgCUUlP4FXHI=;
	b=F+bUVCimrv6MeskNrM3PIXazhJo+tuRmD+CEUyx7ZCgPKtwFF5YJfE4SN/nwJy9b
	qEMZ8YKuD43MXBb3EfnH9lMNrt1bvZMyD26qwxbbsHU2Aoy9snAF+Uax+BJeDOLpIgj
	oYKTgWQGoyR8q/ZygmObkYMcZgcjNlha43W3bHtc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644869785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2W+MsCnNHuwSEV4QYKSmbGwxyvXDQqFZgCUUlP4FXHI=;
	b=NLrh/5IGmnn7IoeBW0MwTFRvwqAyqF4q/N0ukuj3hS6BERNFRmVpeQw2nK7Tntif
	7KcpAPNa3Om9etTj43hI7nu06w4p1DY7ooGEMFZRfDq38ot2SpMZWKQlABD5toluzy7
	KLZu9EAot9zxwsraNs2scbdgczpctNvPkcbCo8EA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9e114f7-d097d1a2-870d-4f5f-b232-c9aa90c22af6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e02726e9af4fb6e5ee58c16926982f11381d9183d07ea08ecfe60229d27f5681
Date: Mon, 14 Feb 2022 20:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644869784
