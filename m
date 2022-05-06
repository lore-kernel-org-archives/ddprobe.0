Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C3A623
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 04:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651812598;
	h=To:Subject:From:Message-Id:Date;
	bh=abjqviOuFnMQblUr7yRpXNUlBV1ZeEYHWuDR0RdwtBk=;
	b=ISxSG/fdEHH9ymBmB0k3kXeK0RQVrmUZzO2QyI1EO1rJGO9hTVyLq1wYVhTTYHdX
	HbK22d9kku5V0dDhOODhu67ZWtW6WEL8xGpcpY2rUfD+Uc0Q6XAQxei3cN/ilwUi3QM
	+epmh4sYYjDsbOTN7HWDCNGb+RxQAD8FqlyT/pX4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651812598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=abjqviOuFnMQblUr7yRpXNUlBV1ZeEYHWuDR0RdwtBk=;
	b=a8RiGl56k5JYJfiRIesA2/sjgaysTxTYF5Whhx5zVGBsaj3IfprsLqu2XHcjMc8y
	fGtYCiOY80NKrnZ5squn57F8+y60WWP5cFLxQg5GEjodT/0UVBXEu/wfAVvAK8Tkmav
	ZW2QaPsZcxkMEYKyIRGF9pYbZW+XIc5y9WSCamcY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018097b401f8-32271257-2f9f-4328-8de9-2ff6b071af14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 180930a194d80f9270f43ff9df140a55f61413bc932bc0289430ae03c955a27c
Date: Fri, 6 May 2022 04:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651812598
