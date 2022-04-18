Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F28A41
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 18:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650308218;
	h=To:Subject:From:Message-Id:Date;
	bh=fxuyXuSmVLn4eeCGOfJ3ERDJY4qXI3DPGcVYvKB4MS4=;
	b=S+qW2L+6G2W7g+d7HDaOiJa8pKkQarQCwKfFnY/fI80leD52fm+POiPX+ejr96Gm
	mojJDxIWQCVi8NJ+Diglscx4T3DWmP7utzzULvFpw6Aap3HTGsP+DfxgYM+vpTyVoIW
	yquAorw0/r4F1VXv4qWUjy3fuvlX8tvJHTwTMQ60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650308218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fxuyXuSmVLn4eeCGOfJ3ERDJY4qXI3DPGcVYvKB4MS4=;
	b=i945MdpIscEWn4Ijni1JqSGoBtSCxTQSRk/s8vm9bmEF6qsshkJCAvz2hlsP2fML
	0kB/NOpqVKQ9PM+DoFgIl497f5Hnix/P26ZavL4RF++98+MU5+8JWy03RPadu8jbBLT
	Jx4rxpGjhzDNFdJObgDCqnfHtY3bSwBrVF46suNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803e08fda4-763652a3-a785-451f-acf0-ad60ca138049-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 973d7f873be1fcd34fbec653272e3bfb79beb6bb1898d2f8dc195b8497525b77
Date: Mon, 18 Apr 2022 18:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650308218
