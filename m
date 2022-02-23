Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2F56ACC
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 21:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645652784;
	h=To:Subject:From:Message-Id:Date;
	bh=V1YEfKJMSDlR3UNrQ+TL0RYqsppBG3dGecGWSG1HaMs=;
	b=RRsCrLIsuaARpVji6VnQ5Fa4tkfunr2CL+pDmV2tKhGI9WycIgV2uj/fjrkGS6VV
	K9gXw+HEn1ZdJF1teRw/olGMJireBGSLgzRtllf7YR3LgbZK36CMFkhHHJcofrmmVeH
	LXtnuKZm/m8xhACTQfDeGz6rDeW2bblwrfTFjA9o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645652784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V1YEfKJMSDlR3UNrQ+TL0RYqsppBG3dGecGWSG1HaMs=;
	b=iQQInxAShdZstv11pYGFuZhwrBl9d7HB+pBM19sFDerCmOvDecYMcenAQfvu+JSY
	wRULhPYkTIt54xJYCbAsf9zYwvYAQIJOag1umi+weAQR0dg+LfWeaRxNoiQTM0fqFd7
	/JyA2i3ol//Mk4z0kn7/900EFri5vZKrUWzEQeiE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f288cb6ad-ac08108e-5428-45b8-84a8-2367757aac58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 500b2d72a432c8b10046967c1b0eee71de31ba6269b41f38684f301a6d732259
Date: Wed, 23 Feb 2022 21:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645652784
