Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B90128EF
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 06:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20A6C433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 06:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681195925;
	bh=9/5Ees1nRHiNo7u6+ESM10egeuHt7LlfZr6dss5QkOY=;
	h=To:Subject:From:Date:From;
	b=kpiUykt+tenIHcRmtvnVOiVc+O7+97t3xtXQo8l6WHYNHK4WBrmHTcE8IC6HpoFN/
	 +nuPs0fjUG5sj+cj7P2Xt/ZOmVWoy3xdRlpSjTKfMIXB5M397jLMJpual0Hw5sbMMJ
	 ehfjrhYX2aqt7y64Y6qYFAru3OHOOPqKN5cnnJAiW+HW5B4WVhFCTitGycd7WI1B3K
	 3UtgKRe7S8hSl5CT2wRfxaNExWjPrTC2Q9Q/so7c1CN5uSQjuzApu+HGCQAb7YrUkv
	 CeIyud7VnQvGY1BPlecg5jaKaX3Zzi+jse0Tp1CMK2C9qYXTKF2HmMT4uL+fyfoyMV
	 66B9Wpp1IOgLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2076C7619A
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 06:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168119592572.9169.5481648834689093896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d16521244430b65b015ce9b5ddb8306acba3fa7e9c9b92c79b2d31f0fb73938
Date: Tue, 11 Apr 2023 06:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681195925
