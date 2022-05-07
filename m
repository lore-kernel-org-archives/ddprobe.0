Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31094A52
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 05:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651903018;
	h=To:Subject:From:Message-Id:Date;
	bh=+jA0rK2SjvHMuaSmy/uqbjqr/i5BN5MrRm0qbNRr4Yg=;
	b=PSPqs+a92idEOAqwf0u+xvl++XZg4HhV1TPH7WVEH2DdFJctldLcUWi1yXheaKf7
	mrt7ICkDokM6rsqQ3S4ARBNKD0NW/MwO6I5npGsYeo7aJT6VI/arxzj/ZGPnt6Y3xH/
	0rYyponpWBmJr4JGKvEpb03lBWn/gpaMjw8fQLkQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651903018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+jA0rK2SjvHMuaSmy/uqbjqr/i5BN5MrRm0qbNRr4Yg=;
	b=YEUdo4mt8RnluXHBspo/rPf28dIManZxuM8+YwhDKqJdZZ9WqPeEv5PrnL2VHoeR
	8xWip7201+KdHMshtPHP4iEtjQ+5Xmrz1UFS0v8R+9mS7q8mwWJ7MbXXMsDnqo/62Bs
	ncMbz9cf4hga/vASlEkv9i9al3SGO2Chp2kDVxpo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809d17b56c-ea111251-3703-428e-a563-401ff758c0d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a10d947039d9354da841316fcb46f65d939b7eeabf207733120d4320cf09414
Date: Sat, 7 May 2022 05:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651903018
