Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D33936E
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 06:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE47BC433C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 06:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688366168;
	bh=BOORSkyk2OOsX7L9GRAziaXq/kceBV4O8eXWCI+6+2s=;
	h=To:Subject:From:Date:From;
	b=adfz49eidE6lKOuNu2498s3/BRR6e+mnmMJHdvIddscFEv7RnSBcBwxF3QgiDuhx1
	 +Ha26AYXWYsydq9FCj40lR2e/V4Y4jlYW40Xtr2OzvFFSkZLsuManteY3IAEtFPEb3
	 3bOp+DzN8rk3qy5ut0bkqTN/4jeKew6xoCED8caTryfruRKqBgwmf+FqmbtQxQcwEn
	 BB87YAuIEMqcRXre2AVtb+vjllFb8vVEDmBKnJWRO+1uOhOFzvxIjp/hQ0zU+iuDVD
	 JGKxQhuUz9B6MAffSPZwOvkrjucyTZkXNd3l+FlMaiIQSwtLQ4A2XPHzEwdz0uv3mn
	 QS6Wc9R0GXV5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B11EB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 06:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168836616874.20907.16311941206658105306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d470ad7d95a14d2a7d1b88df2401b04012a43f8e72734013bb98f82bd8ff9777
Date: Mon, 03 Jul 2023 06:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688366168
