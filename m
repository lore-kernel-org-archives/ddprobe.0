Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21D4629
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 06:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656484613;
	h=To:Subject:From:Message-Id:Date;
	bh=+ozu/jXJRJYDdtcKvTMYdYaXjL58VG8o4x8Jh6GZqDk=;
	b=TWh+rVk5Yq6A+9JXV5nUaoDQtsFbhpmSESOE/7XiiBQPBVhNZQUW8Ix8R0846gsr
	0PsaflTRE/kLZViAljM5LQtIBN3RJgxtn7BfJzwDxPooOy9jwZecDRT2K7PbchnJbDh
	CKSx2nzoLec/IU5fIYwFTNWtBqcjazj/UDeY0ACI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656484613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+ozu/jXJRJYDdtcKvTMYdYaXjL58VG8o4x8Jh6GZqDk=;
	b=Wn6ds1d6t9vwuCOm7eHbMzlmDBGBQNtHUK9zzfxcRRL7FQ0IOMrGPU5Ekd9BitC4
	mxTv3fNoAgQ/FCr7s4xcqjLfAxeSamsYcEo6dDEhPAvdN/LZA3kJ5gMb9UQrLCkJll5
	jAZKWLqbEbHDbWOMs5TMGiC83fXNpkV9uaTbajZc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ae2d4893-55cf56a8-5f0a-4174-bd4d-80f05c6de31f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7f8ba2d57a90016f65173e2927a37ac89114776f4d464b2ab707694f52a2b02
Date: Wed, 29 Jun 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656484612
