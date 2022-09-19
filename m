Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7ECC7C
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EE72C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663559453;
	bh=L40Ptz++0FXEM5y6Qzk//r8n/HzI57g3ntjiD6Dsprw=;
	h=To:Subject:From:Date:From;
	b=Ti/ToU3uBrLbQ7JmdI9N/YHbNlLNxqL3u5RIOIZBb9OdXMXRwKkavBNh9gHz0jC+i
	 uWuFfslS9vQDE+tH6CDnAIy+rhwN+W10txTR4FJQxBkFYTT3mbq4ZwrMd82R1wxaaQ
	 QSMgYzqBKo/+ZmsuiyBH6gqDt6961vqubUfKZ3+FU33gWzvYbgpW767q4g9R76ibtz
	 YO505+9VCalxxbY49HGazdsPVf79EMY7cN1/VHu+i7vhF9UBf6cRk9wGY6H/wTVB/R
	 kzyjLHs71skrSaUfVJagrevWBCrXZaomJ5z/m18EOFIQZle/j17jE4p+50Eecx8qBd
	 tIHdhp0Pze7pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 552A2ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166355945334.2066.2644731970837662630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6148675b3921c6d33f365ef73accb9a351339d8973d4b3852559157920db13b
Date: Mon, 19 Sep 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663559453
