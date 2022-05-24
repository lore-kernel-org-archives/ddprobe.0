Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F13810
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 13:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653398639;
	h=To:Subject:From:Message-Id:Date;
	bh=/ijJKRV6MVQm5sOUfZoACAIVUuspuPHRFCBHPY0G8a0=;
	b=bHdS7D877Jrtbi/suOOSa7ovrjsXwizt8VGzoW+TCNwCFuSL3pkRVrMloGWI4d9Q
	wBD6SNUt8q0g5hPAzE81+WmXnINst2ipqwpqut6eduNywNCwCA1vcMXJ2q+jc7uS4kz
	SYZ0Dd3DriZypz5Pr76WO+ypl8PD6m+XOmbegZfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653398639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/ijJKRV6MVQm5sOUfZoACAIVUuspuPHRFCBHPY0G8a0=;
	b=OTLkxkGj3v0QW96fz11R7QkrkeUQ/JihkXT/D2VKfhvV/zeS5gu4CnM6fuQHkhOF
	znT1HIWsEMehaAa14i3XKtSHFOW0BEpe54+bC70oiWLG3fBwTNRj+kjboYfERH0FEvJ
	xFpOegCmDQHYFmkXrfccGychRWFvPRR7NnKtgs64=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f63d129a-b1ac778f-50fb-402b-ac69-82cb78728705-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c16939839b337bbc09ea89d61c02279582c205d51286f83477e2b9cc0587197
Date: Tue, 24 May 2022 13:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653398639
