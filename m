Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F756004
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 18:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657822612;
	h=To:Subject:From:Message-Id:Date;
	bh=KpiWlsh7H51LfvG9N4H8aCWvWcc5O1p7hTTbw/6v2Uc=;
	b=cc/rSBbtFhRWwKOE68IhaC8bd22ySkJ5eQ4vcg7VCWN/wuyCsZL+Sy8pj70rw4pc
	8u7HXDcoqNbO9MMbOQ45fhPracHXAUAbppe/RhCu92X35utciH5eg6D743b4Po5yre9
	w1wTEfRG11BROfpA/k8Q19oTifLKdexA9bGYb6dc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657822612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KpiWlsh7H51LfvG9N4H8aCWvWcc5O1p7hTTbw/6v2Uc=;
	b=MzBEDEcK6Ue1hToAliaQqzaj6Irj/jo4fpv5bmgY0OKCJu+mRkvMd1V6UmVuL+wS
	aYxJq8x22xVQkiIpWApYuyDNOkyLeteuCwTla9A/5hKdnV5yvA+WDHwGGNsSEq1mpPL
	zhEdLV39dZA0ZoWnZ9lXTuRdodppzv62MGrLuouQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fded8b40-3d1eba6f-6a85-45b1-8cfb-1a83e96b5da4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acb43b852721deb5bfb564f5e2ae60c678fbf10ab535229b106196efccb55900
Date: Thu, 14 Jul 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657822612
