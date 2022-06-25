Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B5723B5
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 09:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656151012;
	h=To:Subject:From:Message-Id:Date;
	bh=U04dycveHvA4GrgVYcQENaV452kWS81LoQu85UXSdHA=;
	b=Hll+ygcJZluf6K5UJckR3n1jIVeBT054vOHrAQORRV+Wvk6qiRqhLdbroxWaxRBz
	/eRtLd7J6Fx5bFvRyCsckp0yBPfP13AO4STFUXFRQuJj+x/sn3Gd5CsuQqYnUZQh2f9
	NByPQ8CS4GshlHKKFlxQYMUpl1U/Y0mu1FOrx3vg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656151012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U04dycveHvA4GrgVYcQENaV452kWS81LoQu85UXSdHA=;
	b=CI0UriND9gypK3628tHCfZg29RzyQaIfhxxoD3S3YVJopQNpAekkCpIXxekNPodB
	yhhSi13CoV+372svuInV6hEqqAPXBu+wNkmUOI9KipUwy0W6vCp/Sf5eDUH5g8+rc5n
	qOXrpSdCF0YryoxPr9jxiWKWY3vUhiQybXuaKC30=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819a4af3f8-cad9a924-e04f-4a41-a983-b34d947d47e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24cf3ecd1fdc0ff2e65b173832c21d1bcd395c34d164dc2df7486fa69046a49a
Date: Sat, 25 Jun 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656151012
