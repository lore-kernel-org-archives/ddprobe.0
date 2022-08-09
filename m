Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4941315A7
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660051852;
	h=To:Subject:From:Message-Id:Date;
	bh=yEKO4kWb4KZduugH0AjfpVOZdEbSHtgcwOh6hVbeSqU=;
	b=EKt8Lw8q3hX05NSrkNo3553v5UcGr80cE7qfDvi+BHX7s8FByt2LNavemL7OTkqy
	KNmoEdzSJ6o0fu5c8u13nZDGdAVDBN1Bfrf4OvOTQA60hRvN6uAa5ReCYGe9PBMjqgk
	pwvmNLdiEa5n1TJLqvmxOY7Km0hhnCki9Kx8Fm88=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660051852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yEKO4kWb4KZduugH0AjfpVOZdEbSHtgcwOh6hVbeSqU=;
	b=C9vpZ42L8R4cdmiDUAz+VJv0XigloqEQN3gyHO0alV2kFkvphAMNqZGR2k2C3zlG
	Vg6Nt/lPgnFa5jUxBh56sryyKFpAXUklQyFHXSpb3G+TzHcrbTd9kwPG1JFk6i28978
	B59PnIFx08gLYpXRbXssgNXySUCDPrc6dWqcd8KI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018282cd0d22-c4b1e151-3669-4e89-bb52-46caf801660c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7e872341b799497ebd7acfd01da7fc25a7271c4263daece7a080fa95a729fcd
Date: Tue, 9 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660051852
