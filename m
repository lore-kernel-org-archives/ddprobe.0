Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585E91FA8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 01:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5A6C433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 01:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688089388;
	bh=Xci8Q27Ckgq8wRanXZn+XM4Qde7cIRWAnI85snQKqcI=;
	h=To:Subject:From:Date:From;
	b=tSSiGT78ihpQuV4vZIeh+qqt2AQMdqHYhQJnhGssZ1FZmd5jIEKoPOQtRwqoQQP28
	 dRvauvVHH+Q2js03PGz24qMuRUWvV5cy1h2nqK2N9SATic4bjU4bHH0ytayYrhcpFX
	 QgekgArwp/u3ch5u4GPTZYaJVD86qXleHouuoZOTR/SP1Dw9KATZr1upu3CKB4BypV
	 a+ra7izfVqN4UrGoaarmfbwjlUMfX1atYHCHJF4ZfNnMEb4e7hkSjxTlW9WV+89jv/
	 as8QK6MX6jp6c0wtUQ9+9oSbJD7rRo/zP6sr23Tn9FdBg7QblLvPJi7cIV6Znax4ZR
	 c7hrqlGJAluKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF27AEB64D9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 01:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168808938870.6268.8072576678351841081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06bc97c7af3affa3f07cea54e94ae54859e00fe66da4455041312bd97cbc8de
Date: Fri, 30 Jun 2023 01:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688089388
