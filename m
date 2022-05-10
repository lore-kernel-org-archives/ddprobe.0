Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1577928E9
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 15:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652195759;
	h=To:Subject:From:Message-Id:Date;
	bh=r5JbVE2aLbF7szaZO7C+erF3rw6tWi629+Qonfh2Mwg=;
	b=eyt7QdZQMPatwd655b9QFCvh2kLUdDDKJDlMerEWZn6ch80sHv+h+k5e0CYn4JRa
	HKVvU3QcEMiJOgdie19vIXsHAilI5lJTHJbsTQHPXSlQ/6BRvnK2IOSQt316HbK3eI5
	Pf+4ZGi6Zkx+Da9M0cXGrrIOngxrHCwj84R8jG9Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652195759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r5JbVE2aLbF7szaZO7C+erF3rw6tWi629+Qonfh2Mwg=;
	b=Iswarmc4vVqQ1fHVs2xQVxFLRm+eyEFBz8moj1anZgKPkgbJYqDeNvfwzkiHKHvp
	IQlyg7f/ALZX4gvd/oPldywk6NQd50XLlzrFk/1HDxkeRTrw182qZeQNrld1oEFZqL1
	j6djJv9lUfAc4ORedZWpe4tlKrHjgjt3x2Z/1or0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ae8a94d9-b42f6087-8736-492b-a8a1-2434aa5122b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f913da0d7f694a2acbe3f966430060fa1145a2f89fb566cc2a26c4b0af6201c
Date: Tue, 10 May 2022 15:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652195759
