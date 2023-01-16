Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2A41FB4
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95204C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673875287;
	bh=OzxHR6yhvZn0NXf4tjymwkIQfPkQSiRVRfaR1e970pU=;
	h=To:Subject:From:Date:From;
	b=axQCcd4B6hTNL85HvOs/l+WCn4sAX4oRL8a/cidrp8DbZqz0WP0QJ06wEG5RS/3rV
	 M4oigZz5xdKGKmiouJlueE63op/0KKP0tnhIoz2jHIepbHE4LrlAeRQ/UcZnin1k87
	 6VD6uN2vNgjzCtf/xqsq0H9dose8PkEkeNq/aobmunZVO1Lhf5ZukO0Dkwo+wFCgt9
	 WNauSEtMJqPRyWCIVLeCSdj6XUbDvxjtQMj2MB82nyyd1Fr+y2I6wh8Efr0Lkdffoe
	 XXJPDnCcTErPEj/2gX6M2eEJddVI6AF8qe1NDh5Qbv50NtCfX5IhHALGwUP5ZBfWOe
	 b4PQygyqFTIeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7999DC46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167387528748.15925.2777989344126847337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6600dcb78596143016186f6f7878f809d0528c9e634e1c4c041be06be47e44d5
Date: Mon, 16 Jan 2023 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673875287
