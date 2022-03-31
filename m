Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387B7373
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 01:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648690138;
	h=To:Subject:From:Message-Id:Date;
	bh=15mY08mHs5N5+DQvWqwQRYyxtG9HbGEwsYTsZZHEAZY=;
	b=doMdx+zIMeoBHh1bhbxELQ3sw5lEHFhbCWQtCC0FhsyspkoKrUIL+nflH0usuB+6
	erfm/ufLpnvksR+eOcxwTHEzEnfgrqvzx536mmOW9wEaCsOwNHFqwOHlgrNEMQFfxhe
	SkvguZlvaE4KYZi3Brw/aitHuLc4DYj4/aaTjsVU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648690138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=15mY08mHs5N5+DQvWqwQRYyxtG9HbGEwsYTsZZHEAZY=;
	b=UUX/wnPrHmyc43Q/pK166f9Jqw7ZHBOUiL0VsBYIaaEC/jETqFLpS+hOSkbvmZ7q
	hfjMxbbR+2MNqzZZLOBT+44dZ1okZ/yYNA7qwV6upEv3JFQJ0EZJfRxtYoQRWJ9Gq8q
	vNvCz1gfDtrvY7nD9NxR6LC+CNx2l6JU1oiFSoZg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdd970d0e-0c99afe9-1de3-48c5-b825-8cf33412c4b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 927e235e481eec09a912d880d980fd573f9116ffd194e870790e25b184f82372
Date: Thu, 31 Mar 2022 01:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648690138
