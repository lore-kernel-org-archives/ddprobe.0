Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8931364
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 22:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650407758;
	h=To:Subject:From:Message-Id:Date;
	bh=U6oa4zGgbPv9g5pfToJUR1S9aK/pFQKKVGZQaPDZVHQ=;
	b=l5NdO346PjQg7UjblGqR+AJC7hWKTNkAE5UXpAWYcTD84tBIoioiz7MkFGV6bjRT
	E6+kLK5vLgjeUtJ9wnXHro7e2bxQUcT0k7gZmHgWOTCBeCoYFrSw+O9OmKQkS8IZGRh
	0NsF1uTfP6klasNmfTjlqMAj30NVTmxV1W5xB48o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650407758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U6oa4zGgbPv9g5pfToJUR1S9aK/pFQKKVGZQaPDZVHQ=;
	b=For7QkaUVdFM1tWQqVSj5Wk2oFll2VcW6ibmzw3buJOVm65yXdCMkLnlWDBKvbwx
	Qqig1jF/dOZ/QPBvqp4pScexiuMYAOK0eZZxjnB7hgetJJW1gvHZaAEt9bUDWBnAhRp
	GSM9TuoFLgcZ/9d1cJMaBAI/vg02bAGNtr8bcwrA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018043f7d999-e30b52e3-56cc-48a5-b82b-23cb4a141ebd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c569a8e47cc41a1ca55ef65c874f6ef7404f087ce6578463fc27b5e1a177b610
Date: Tue, 19 Apr 2022 22:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650407758
