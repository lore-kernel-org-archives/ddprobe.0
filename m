Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D99A17E6
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 07:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEBEC433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 07:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688456768;
	bh=2NlCBgL6NKkhnJY8njkvsJ48tGfp7Rgey/TjmO9Twa4=;
	h=To:Subject:From:Date:From;
	b=HbzLWAFFa3NySmiCdwGMVs7Oh3omeM6yCNWx+xReHRhyLjL5egn1xIh1fLY0UTsZW
	 C5nSbpmFAJvqBfULVBt461ClE+mkBEL79GRO1CAQ1KoS64b9NNo9c7mhWXTfE1UDHU
	 kVc4Z7uA95oNKWwi4CFsDRaGpAD9M2S4OnC+RQcaMpiY2R/mipKhaSjjKQelcQ2RIq
	 j4eoeM61Z49vj6n1UsmimOJOA1iTKCuWqQEr54sgct/N0VQL812JyXMi5XUiM8Pb/L
	 5oodzcBNni0plvo/BbrIfkzUL3Bj7EDWmJSKg6VqN5h6zTDeh/Bumjqk9TiEyKriW3
	 5wa08ZQpdqRJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B098EEB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 07:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168845676870.17475.9864964947175335225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41b4e1723633b4aa680a79d0a6644c882a8b35f2b2206b099b2859b17a87017
Date: Tue, 04 Jul 2023 07:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688456768
