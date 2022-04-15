Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A687E
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 13:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650028138;
	h=To:Subject:From:Message-Id:Date;
	bh=lbiGb44g8lDT5yUpYnSX2M4WPfhjLb+2U+Jzx/ejx9Y=;
	b=lHHB7yrgfUmiXaD8GEhjVYEIhKlcto7Ts0tFrtQrOfDa9U+naD+PgOTXLD8FrH4H
	KXyG3QMhZIUqA/HlUfJUFI9l8K/BDDqnOx3AhiDqTCF1bFnabK7RAtKdkVWI8Ut0xl5
	bUvke+x2wlirVoh278Suht1doirajjQ+9x1qDtqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650028138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lbiGb44g8lDT5yUpYnSX2M4WPfhjLb+2U+Jzx/ejx9Y=;
	b=FLAjTlEWGjFwteiqkTOXxdkL75/SoRlYz7Mn0UrD3tP7JacDpakTa86kKNtOlSxU
	6kaljdE+6/dwzGqXR5j5L2/5/HcHogPxRvdPJSJKguSd9r550mgnE5nVK8/8jrcnV82
	cVmLVOpjM+S8BMdyUzUJHrQ2GEwdZgK+cOBkm5ZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802d574f2a-2fe73bd9-12f9-44a7-b4fa-c6c22695439f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3344be2096d292c85a32127fc27f912da29ecfb80c1326222a4351526655d19d
Date: Fri, 15 Apr 2022 13:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650028138
