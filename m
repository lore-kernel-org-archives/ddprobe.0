Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8FB13D61
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70FD9C433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663153253;
	bh=YtWxWbVZLU/WG/tvsP5TqDnYc+xQTkTwf6ZCYhmozxg=;
	h=To:Subject:From:Date:From;
	b=XP+jZla3abEo6N9VGgoDgNO9hYmi8DGxQKPXx0jK8rs21Lo96c8vnHgWljq1PDvur
	 Kx23DR5NRllMaR63ywqfxOUrX5vSN4x3sdAaQNvg8tBnFXQ8q4+RFHk/3NEKXasBdm
	 mvCf2ea6Znh3O26/tErd3j20k6Pb1o+7H91a5nS4mnG/UBMoD6j4ZDDZqkBckYHiBI
	 AdRxslDxJ8lyrHxfagWNkzWCkNJG3JYBjzX9IbV7H5gPN0MXw4ZCm/2CnFv4sIkHQ0
	 9XnsE5paN0f6aUjNL3p4FKUY4/mPfsWkbCrHemXHDtZxHbX0H9xfGaFQea3IrAQ0d6
	 0Kt8+ElnD1QJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52362ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166315325332.22401.17680757891937726510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9311dfc0edb7dc539fd9c2b7b043342c5ae7beda18c99b8c99a56e19d39cbb
Date: Wed, 14 Sep 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663153253
