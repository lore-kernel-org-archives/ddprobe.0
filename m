Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7907E2916
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645824084;
	h=To:Subject:From:Message-Id:Date;
	bh=HIJ/2fdqz+nkAR86YkOJpreL6ZYO7umgxR5ZITOKBZQ=;
	b=BeDdPXmYNTt+cZ1LMi9Ac3Da9NnbZu8oOLNyAHAt/b63nKxFdHata/3BfVllV8CA
	qb2n11m/FzaghWNxUaFZfEmSTCCmljYHAIzRAKp+oL38LqRiLhMqcfnP/Si0R2Hkqgm
	6eF9XCCEw1iWn2h4bXzq46bH9fTueyNANpui/VbE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645824084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HIJ/2fdqz+nkAR86YkOJpreL6ZYO7umgxR5ZITOKBZQ=;
	b=dfmbpqsTsFR1QFrqq+MxnJ4+Oa7sO3Q966UWc4Iavusmn2ugkrPakkIEZiwbmiJf
	ACFCjonjyeClD9PLbCJNAu5qZcKhSsCKnIbwUEipC/SsKoNu7KuEgBtVV0mQAKl6SiA
	/tvNzinEDCz8QCllp91QEIJXdoVFSKWPw8Qablak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f32c28b47-41c96a20-9f76-4c76-a0b4-f19dce466216-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80b8c8faeeb3624ae5cde7beaf1976a180d199540f6a4bc97516f21ef5340031
Date: Fri, 25 Feb 2022 21:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645824084
