Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B87715A1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 02:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5C9AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 02:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686363485;
	bh=BYoZ6/5/Ajv4a741EiOc/LS+1totslqJgv5AqG6+vE8=;
	h=To:Subject:From:Date:From;
	b=cCcqM9sbqGbYYZxptRpelDpX6A087dfW3pM3gwHH+BU4jYsxwJMkNxJac9XMeRjNY
	 i3tvZQvjKaq7UXirIAqzjXguMAvKAT1pbeta8DzY8Y+vE8f1q6FGA2+QV58Vs/fCCK
	 3n/Gysy9j4lnCosCZtoNrTrh3t+GAGxUR1hdoHFIgt+0QcYKcdsQJ8kWP3oETyJr6j
	 ESQ/Jtsd8W4Al9wSjvUlQJZv/s+Zg2cY+QMN85eyAlQVmSU21+zSj5ve40pRUKQu8b
	 +cbB7GGoRmr5JRKBz1RHS7Gh/30QqkUk/eSTXUdoX6kd7CVvSFCYhnB+vFWoLALPAN
	 RDXyzsd0KllAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC4EC7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 02:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168636348576.27630.646495108024889685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 082d7af81df01c2c18f6a645b7a1f82ee79efaa16109b57baefcd7ea90c98dad
Date: Sat, 10 Jun 2023 02:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686363485
