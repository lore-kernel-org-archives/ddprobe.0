Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210A13D7C
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 13:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656596812;
	h=To:Subject:From:Message-Id:Date;
	bh=Dwp2KTi4gjFwxcFEGBf2Xt38jqeR42LC1DkCG4zaaKM=;
	b=kaHOvae1RuePyc8rzhOusrWOEjQ36Q+mPrnKAHPudaGy5cYYfUK2meUkASidvmgz
	u/Lrq9oblSb7u2rTy4mrUPbofvCmZ3Xxn6ahg96yVuz9h+vrsqwlaY7+ilpWK78g9sW
	MiKRPE58z1HOHPlmNlukShU9XlsaD93v0MFEaKUc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656596812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dwp2KTi4gjFwxcFEGBf2Xt38jqeR42LC1DkCG4zaaKM=;
	b=cgWfuN1ObnPjjG8lJDf275GWiTgeqMVDzp2xwdgKX+3HuhDaXCeG0o0mz7h0ZHtK
	vQJoN9DhpfuY0fNz/xjo0AqYFJU5D7GeoewHd32sQV7EGUmoXXGx3q0WSeUXgy3rkmm
	FGtqVEPhKWXUdIvcGu7ufGvfx8Tdhr0BfmMMWRiM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b4dd51f7-37d10211-fd07-4284-afdc-56fd71db1911-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2052bd535986c31d58533853d5c6cbd3e7c775ec7dab2d7c6da0839a7438192
Date: Thu, 30 Jun 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656596812
