Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767F67F
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 07:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651478218;
	h=To:Subject:From:Message-Id:Date;
	bh=oJ744Mq3DaF3/P9Py0wmtic8K3CfmwfnbvpsMNS6ZCE=;
	b=IuqfgKGlVKOSH0dF7pdTUvFDC/qB8DHCa9VKulFQ3bLnGLnai35Tu9z/hO+4Gq5J
	wpcPiTOCxcZ1+VwlK2b7QsJM0SxR5wdpOAXc/WUoSMKb5ajNtrUG3k7qfkTBzXydqaZ
	owAGeUEwBekJ18OVKt6T8bpQixfNT7KaRMYN9jiM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651478218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oJ744Mq3DaF3/P9Py0wmtic8K3CfmwfnbvpsMNS6ZCE=;
	b=GUbiEH++eBHPNNHWOkjC4w/FiwMAo9d/HA7e/5VmmeOLErvhobEcDX4PpZZncdod
	DGafCjQDUkKskKr2qjfNFSufUZyXrrYVSDghSm6hxlgJM6FhuScov+9IGNg0UeyNm++
	wPW/E0CzasbE2QXXas6IXBbiU9tMuuVZHe52NGYc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018083c5c61f-42f0f0cc-c8d9-42db-9b18-a74b99f4aa96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a32681d8a2be336c95b9a922b87484272e03eb7b549d707bc5f7400826cb9afd
Date: Mon, 2 May 2022 07:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651478218
