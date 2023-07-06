Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E6063BA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 20:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBB7C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 20:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688677028;
	bh=jg+p2nHPV7Hr/8cNEcJWSCZ2blbV1HSOF1M47kyU39A=;
	h=To:Subject:From:Date:From;
	b=EaTbx72JxGsRMybBUECnB99KXSw3cgQ5QU623a02Cxlc9KK0y+L7v6sHPG9FzXZzq
	 AXpYR2qJjGXsBVWq33GRg695/xg/w4kP2CoPEOQ9ibvB1Ssi9eTfZoxONKthA9ixU9
	 ddIOUR2Pg6YosbBCpjjFr+pQHJpWGptPsYX8kp8TGoH8yVXtXsc9BnuJFm2joihzW9
	 Zd0HXnZXius4becYZdqqAOsV2E535Mv0PUTj0D//Ez+KBV6/DzHUQm5HeQ4gly41Yi
	 OOa+MbGbr1QkCM8R1I3ezdPgaNQXMxooRTKc/ZeCB/Uhad3TFhEqNI6vmEA8sEG7j4
	 HFAmCXW1VcVAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B19EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 20:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168867702873.31759.16232751237600370554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f6cf78f370d53574dc72658e18d41056ac67a4f00ca0f5f2ad77289c18f9592
Date: Thu, 06 Jul 2023 20:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688677028
