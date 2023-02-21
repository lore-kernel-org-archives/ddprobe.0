Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30ED21C3A
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 10:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D431EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 10:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676976545;
	bh=FqPW1EvTn74kwsoDYva3HDotWYzMQAQ1p0Ne7DHXFm0=;
	h=To:Subject:From:Date:From;
	b=J+UnHQsl1h+tCnA4xFce6lDPevr2GZtG2GuM3dr+JKRYnV2utn4JSehzivOip1huZ
	 YEac1ooph05rg48X2CFv+ISNSV1I+H8Gh5O7hWAIThY/xWn9Ea5iu9TDIXO0SVF1u+
	 iFTncWAUbGUDGE7xZR+ZFkCJdaFLg2w3eugAWuxiLOaLHJsTwku8k/c5VRnUiyqJNZ
	 Hv5B6hojzHwU6LTvFHvRN67+NC3B9egvouul6vwN0QTV5Fp3kvQ4MGxJUrKIUwDtCP
	 KNFjmWb73jUGdZOP9rKlEOVKXiNXUnUnEj3zhADtmN0hqMVeCjz/g/4RySZuxmP+Di
	 ySt+RRY+poCCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F2CC6379F
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 10:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167697654573.17801.15755424214236488161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b8b7277748bbcb9ce13ca093889cd7c8420365c3d0b3627338a73c93688218
Date: Tue, 21 Feb 2023 10:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676976545
