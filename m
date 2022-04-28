Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECBF5EC2
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 09:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651137058;
	h=To:Subject:From:Message-Id:Date;
	bh=1puhAm4wvBDO01/zGH8COPH8GrrvaNj7oCrjhwLDHe8=;
	b=jEq1N0h2nhybqaUzlMwB85d0D2I6UmOBszUTp4cDZRwhtuJ/48Ncu8iUqfm8wQi4
	NTnm9R1JcT86+YzhoydtE1ZeqI21WmiN3ts6Di/rgUtlPzWzGQ+FJ83ZYSO2LOdngHP
	uI64gKuXfKbswXNf9Ml0Q8pSdRNVAMa/XSuT3i3w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651137058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1puhAm4wvBDO01/zGH8COPH8GrrvaNj7oCrjhwLDHe8=;
	b=T0BE9vobUMeMivLs75jeg+6fdZOkQCCpIaicXgJ70iid/roR9CnnWDo0nkRLg9Dk
	0CgZYXJAFTDFdPBBOCH49EMPIboI49bFxrEBlxSBctyhzq0OZ8rsAbaqoRo/vOU1C4I
	sGaW6JAHiqO4YqBGxqu84eWFbLQFtAtI/KR2kni4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806f7015ac-2e53ea58-24f5-4878-ad24-222b25ab3084-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1289030511a67cd5d8fd4e71d1aefc31b6357179a742afbf7c08b3e539d7bb2
Date: Thu, 28 Apr 2022 09:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651137058
