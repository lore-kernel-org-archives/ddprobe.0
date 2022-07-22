Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBF34A09
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658505412;
	h=To:Subject:From:Message-Id:Date;
	bh=H3xureLLIUlOT79l+2Av9I7H0CLiO36lxTZ6+liRv94=;
	b=RD8AQ/i46HabTuLrsisOeF+uy0jIXCAWhE8j/xQ2Od6kKKFe+UuVxqiHNxaqrRco
	i3gVnDxuaC2c7eOAbLHAe0Q2g7ZOV01iojJ5KHozf9XCGOQP3uj9eyhZRthI57JUil3
	Sxi/dshIQeRr72ffV9Hq+mj9nnO+EHfZxFelMO6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658505412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H3xureLLIUlOT79l+2Av9I7H0CLiO36lxTZ6+liRv94=;
	b=Ze3/ScsRUUCVAWvJs7hPDDKOXde22BluifMufdecgLm21l4FulQ145bXaR2Y873d
	gTInG7XZJd4dKJoNT9ttv94aV1bQVclNbLGrL5bRfoSGRscrt9vS8a8a8/0XLfPASjP
	GeYYskxUcdIQ1aQRR/pBCfMT7BSz0/PEIUGQIgpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018226a03eac-5ecc013c-b848-4325-bb0c-1def621c0e2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd2b1708e356843afd21e0aeb568b8145ae218034fef5d659522424c3db070bc
Date: Fri, 22 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658505412
