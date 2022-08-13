Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3272D257D
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660420852;
	h=To:Subject:From:Message-Id:Date;
	bh=7CwMpDGWe7CSIqnOqsSPuDH4HL5FvIFvrQXPbADTWvw=;
	b=I53VUZpynfPuLGxil9+utk/Mt740D2WB2DiwKhprfz8l7uSuynjEEimXUFTQ4tiu
	HQUyciVcXznjY/VT7pj57viBnKPJiu3dpN+Yo4ITLNVKEQAWNCehyedx63RKNnV1z1o
	nxxKhBhzb3V+0gapqVCP5O8IR/3z4iejT3T7Kz5g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660420852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7CwMpDGWe7CSIqnOqsSPuDH4HL5FvIFvrQXPbADTWvw=;
	b=eJ8K5xb6UvNU7AxxFb7mUFMAqeteOtRgzzFqIC2FAy9Wl0uZBZbKd3zqyjp4VH8J
	UZrYfjRWS92H0aND94gouS1LHy7l7ZU1ZbsIBfDbK8FN1MXhVm/a+eWfTvQ6eTYFsaY
	08OMKhJXsBiSwQZJ7bGuddniLF079mK15syKdqv0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018298cb8b3b-179b2bd9-20ae-4562-b859-84f930c1d84c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac26cd2078b38e222319b824c7e17c7e0ffe0c6c98294d7ccce5dfdd9d3af5a3
Date: Sat, 13 Aug 2022 20:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660420852
