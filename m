Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2254186B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7698EC433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664515853;
	bh=imv9NuBsLyNzQUiS8Bi6GQrKKeA6Q7GjHYTDGtKBx3M=;
	h=To:Subject:From:Date:From;
	b=JkAv1i0gdCShe5TEX7fSKZq2c5Pcgyi+bTjg3whT9uu2CGJXM3TfLzMRi4pwYNxyD
	 ppvu9NUFuar4xq+cofHcQIDiwq+sLm10LlCCWlzx410rQ7rM7sMrROnyE5MYTFqJk/
	 hdnFj8ZoH2jTNXQHKXgIGoqONwVawFLiSHq2/bKiLjBQvfbUC15sR9ahVT7MPr6GVP
	 gXZScdMuomQPikfG8S4zdICEeRi9Al+bzJ39zOXCCzzR2WtkFs3j3Dm1p4st2A29Us
	 vqQKaVkuPegypdtDXeQPP8610jrb3sLj3sM1id/V3JI2/ojP817qZYaUzoiuhYXbbn
	 8Onqf/ocMyVcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550D2C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166451585332.18873.4791677457746035460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46191f5ca0756d04c7eb469f2de913420460a002307a2d9498a17f0d48951f78
Date: Fri, 30 Sep 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664515853
