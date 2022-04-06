Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA443226
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 20:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649277718;
	h=To:Subject:From:Message-Id:Date;
	bh=frU8RTyveR5FjzpD+IVycGrlWDnagG+YScF8O2jGNj0=;
	b=UHKoFkcfzBv+agKltDFUBT6ujxnUimIgc6MPc22l9rsYBrGESOeF0hqp3kVmgekL
	FsJkyStEKjSSMXlXMYZ4A32zinK+658SsOe+RNbcoNh6BY8scv+M+U0pewqN90JbUeO
	pbsnJBFUNekF8NXnWd4sKDmUFJZF0WY53scAllv8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649277718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=frU8RTyveR5FjzpD+IVycGrlWDnagG+YScF8O2jGNj0=;
	b=L7lg0zvtha++oC6k3mkjdRgkUudnP4yJmBS5RTgiYaJUr1fwHxMQ7as7aURjq0qJ
	3a7pHBYr9JhlQB69PKp4Mg5ek1qgl0M1IkwcjBJxwCHWhOdb5PqkdMRX3Avx1+CVphF
	Nj21NHn8ppUv8tFMJ8zjIuRVkBapKgG4qKmcI7a0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180009cceff-84587de7-e651-41c0-bb1d-6d9335d4cc18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c70c2ae668576ca7d879bd62262c623082330dc224a2837daba8624d87173e8
Date: Wed, 6 Apr 2022 20:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649277718
