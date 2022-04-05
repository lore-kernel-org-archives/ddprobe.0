Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7D015A5
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 08:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649146678;
	h=To:Subject:From:Message-Id:Date;
	bh=tySw6dHkMqs0IZ12FvCesD1vzmkPtjE0x04nISRnov0=;
	b=XVBmgnK6a2XlJFdJsUuEyXsfzKACYIt7Cwike/7EM+iUvNZMl03TAjbo7WPRwsaB
	XtQSw5WddNbRW1kH58sH4Eyx9l8jWB6v7cvbN9uYhxr3rthQ9y/N11HlaecrXYwIGzr
	6ii120eU8v22ns+NAAB/Bl3Cg+85OL9aUr6/bVR0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649146678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tySw6dHkMqs0IZ12FvCesD1vzmkPtjE0x04nISRnov0=;
	b=Xq8aclHgUBdbqGD4Ai/MhCfMq92FEJ3jWaPlTFM1G9sfoiyI+HHhy3jJEAlxTuvu
	KhxL4zCq5YiTzBV/PLi50RVriYD2UZs4TpQUiaPAEgqqQaRLocb7q8ovhbhKlVcEs+2
	0bAvb65a9lG8z5+jg9Sw9Sk+aCCEizqNscK79d98=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff8cd4bfc-e103fea3-895e-481a-85e1-f8fc29acaa7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11cdf61bed75593bbee62f3939de8f61fe00421971232280dde6ae870306514c
Date: Tue, 5 Apr 2022 08:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649146678
