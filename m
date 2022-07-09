Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4451C08
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 17:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657389412;
	h=To:Subject:From:Message-Id:Date;
	bh=hcRcqV8hInJsgVSo7oORYmcQS7sb91DWCDJfH5Cwn44=;
	b=MXFa7KGMLGoTxvNJodH3oXC3Yi7ReqOIX9oPxX6wck9zpM+zOOYZmz2vypxtXuno
	LicMmXFDt4Jg/75iMSgOz0rIObNLAOHdo9oryZ2V44iIzodjrX/0l/OhiDhGQIDI2gg
	0MlTKL5fzcBk2rtYQlBfixn+FHl+DEy8awCgXhfg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657389412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hcRcqV8hInJsgVSo7oORYmcQS7sb91DWCDJfH5Cwn44=;
	b=Ht818tvgbzBdi3nT3WoEjpoCweOJLdG9mUsgFIdkQEiteIlTUjl2DQueqo3QkX9y
	pRcho3wjFqsUwWRdedAPTHbeuZ7af7z+3o8p3fvY8HE14JIBAiasa6nMHWD0Kr1LcCZ
	dSO5TziOZQsSpf/bh+3YA9L/Do9z6XMV3R/fRwrg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e41b6fdb-07cf77c5-435a-401a-a75d-dd94b8804c36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0dea4e5927ae43af2a8deb81c4ec5bd60dbe8f2818199c4dab77e6f2e37b20fd
Date: Sat, 9 Jul 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657389412
