Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B193929A4
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645536085;
	h=To:Subject:From:Message-Id:Date;
	bh=CaYbwB7SJk4dIM2PPILsiSPy/xTyCEkx3T4p8+agtd0=;
	b=KFqU6plgAQWuxLNsFRi2FXYFuOq5Kgp5d2f10xH+dgxaczQiMwXrmRwyEzADf1wF
	GkCXpwqweVSWJ884w8TUrEWlkKLlb2c9aAs7tbGArwD7q5oi1TiCDn3D7Y0Z3vOk1+O
	jbRupyQZQrLlovo2tPhzNCQiMGS6dcgXlCF1wrSY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645536085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CaYbwB7SJk4dIM2PPILsiSPy/xTyCEkx3T4p8+agtd0=;
	b=HHyw24KbRGaGZe8pY1ML0Ud+1TIAeaxBU8JR9DG9OqytLgR8JGhMzgwYp6NvR0W6
	wknvZhcgmw/O2X5BilDk8LUiwbRVAU92/vlLkNx65kL7jFgQUXdrFKXghIfzJ/U0/lC
	DCzd6XUXt5XMWcnhtP0scRuvk5WwpyNht6N5Qq4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f21980320-e1639481-2944-4d45-b1a4-857b1161a41d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6559f4cd12c9d2e1491cb9ae56975a6481028aff9fd7c7bbfbc3cbaac796d4b
Date: Tue, 22 Feb 2022 13:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645536084
