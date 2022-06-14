Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623C37C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 04:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655180819;
	h=To:Subject:From:Message-Id:Date;
	bh=N4IcI57Sr8VKpKz98iAEvomirmlH7Mpjdw+0vo8kKK0=;
	b=MoROLVI2IjO5KacISoxx3K9qxlJAyuDse28ctU2HlsLKG3hVQE7ZRGPts1dPxCU3
	L0WIbheOiBkywSIHLIj5T3LF8U26DGpz303TVLNVUia+NIkE8gjhbTzRqx7Hfo5Oqu7
	f7moQ9SI6VGitHgK/yQ1yYNmHKIduf50ss9LOGdw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655180819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N4IcI57Sr8VKpKz98iAEvomirmlH7Mpjdw+0vo8kKK0=;
	b=Usz66piaQ2U6930trSkK3wF6ELO9Vu40UY28VcgrA+mIYdiNPFQ4eJXYNVGfX8Ig
	RMixvBuqgSFSuUlguHoCUAyyfzs34eRWrmpeYXy0I1lnesjxxSsMEvwgOAmb8kmlAeo
	NkllgY9nJxmZjxVe6ggf4yScmRIxzHihWnntOEqk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816076fb40-0dc7ddf3-87f9-43f0-bec9-15ecefc56719-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e1b117923ff0882ccf3be4fa87d6cb2cc255aae298aa75a33bca6c73c986629
Date: Tue, 14 Jun 2022 04:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655180819
