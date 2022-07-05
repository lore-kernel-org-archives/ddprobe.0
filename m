Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E8B42F34
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657055213;
	h=To:Subject:From:Message-Id:Date;
	bh=9f720dZZ5KxH8x7YJzYeYx0KK8aVidEFVWhaVQorbQU=;
	b=d/yYOfke4CSH8CV+J1NtlT6+Lq71W33WOHbqAlHf1gfhIujsWxeHsuxSoLxl1Y3F
	mmRpYksVaiVqxZzMIRbYwDlL4PV+yAknG5RrO5R7pM23vttSgxwnHGGwa+0KKFKPzBf
	lb2b+nIwlJWQ5C3srlDKD+ZaOqErNWi7i/bhwh/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657055213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9f720dZZ5KxH8x7YJzYeYx0KK8aVidEFVWhaVQorbQU=;
	b=I4p1JvxAL0bpdD5UlNN/sBt2FoAvO7BWZmyEPuJMayW/oVcmm58IGZ50r6rAHAer
	oyjbnXKUloeSqcvfg2I2kwpawx0kOHbjE2MN6pdxrPtKLCjMbK1mfU3egfzS6TXUjh/
	H8BiBQouTStKVQVc8+pOn32AWl5Sh3jdLFxJCB4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d02ff31b-7ee24861-33b4-4ce5-b44a-47370d788534-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d79e09b11ce9d683c0557df707ed0f81eab6abd69eec32b1eeb053487a329d24
Date: Tue, 5 Jul 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657055212
