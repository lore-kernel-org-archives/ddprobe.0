Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A154E7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659430253;
	h=To:Subject:From:Message-Id:Date;
	bh=hJ6MsJhdYWLHopEk/1snDSXUr5oIaxfuEeAUTzTCfUc=;
	b=fqAbcz1OVcoEBQ8oz8S6PfP9gp9FCIaarsqM1ijQhRT7LXIJ58JdN+1yu1H9qR39
	gm4kzRCVxnYBDgn7vHQpsv/4wcrZoKsXEarZZKSig0nNd/a5B64fQ8ZZ3cdjBos+JKo
	BqQxDjpqpSjPFS25q6suZDw63zdgwNAgiTDH0gHk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659430253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hJ6MsJhdYWLHopEk/1snDSXUr5oIaxfuEeAUTzTCfUc=;
	b=JWQ+KPp/08XO7k7F1r2Tyw9uJi9V+x9ETtORxKAq/9gtQ6FicM3U6fmZTjbV1bWI
	93+xEnGyQe4dMnWAoGjDvQ230igzfBfB5xSmMAyvAmbpNCCEtQyk176jPMCtJjctlG4
	NSQqIe9OzX6Cr0IpwR7xIaWAIprqaBhpWnM6bKzE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825dc0302a-6e515b70-956b-4c24-83ae-26cfff0318fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36121561fb698524e3e9d195e3dd970fabbcdf621aece73d1581add6bfc5bbfc
Date: Tue, 2 Aug 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659430252
