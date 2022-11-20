Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B72F87EF
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAAEC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668936654;
	bh=PHlwwO1eNj+Xx/h+Ix0G5HpWLcQyDuNOX2rUf/h7BNI=;
	h=To:Subject:From:Date:From;
	b=ta6XcHGtrUB6LcOaFRyldh0feDE3zK+tato5srfu535EM0LkEYHqJgYSCrf0GZUnU
	 S6DpeBGx/Arw64tymwLJ6BScLIYKeYUppHrpYlIF/EaxCaYiHvQ1PHuLyO5tiqk4ce
	 KqHlxqDTTEhJqyzyxCnHTzH+UWvhw62vUFja0WP+g5lKBhnapGy4T3EpK5mZ+pWDN7
	 O+poTuelikQgHFXnAQxDSPsejUNjsNeh+Oz5knvbnxCJRNt/eTBOS671G7AV1xkRfY
	 22BTMTOfeBvUFk2E+D+Pi/KePpKgcx2l/D2C/S+Vpgx0q0bjHYp/KJxS5u22dWOjPV
	 3JQk9sBJrRYYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E19C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166893665433.10798.10422662575746626631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 203995de137db627763b19d4f4b74d22d8a3b2f2e2b5faa4579c08c61a1da4bb
Date: Sun, 20 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668936654
