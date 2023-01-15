Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55101871
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82006C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673797887;
	bh=dZUlOkrIoifpLPQDgJ6k1tzfG3Rfv55RrOq72bOguYs=;
	h=To:Subject:From:Date:From;
	b=q5pgBN+3kkB7JYtQTH3nWJKEDqnwns8Bj6E+1ijDv7RRCHnrMt+l6lBNla1sK/adG
	 4nmwvrjNBZ6BcsJfI/6iTMTpFPJeqHQ9J/iPTyoQZAylX9tAfc4clKUfSSM6SKWEIK
	 AWXdOgP5kbkjsP3UU/1yoeRhkKr1XANHc0DmeeDjank3nUr6BWpUVUy07sGu4bfH+9
	 FmIhCuBPPMEL58KcjohCg2nDzYB1UL3OzNC88amff3MiKhHeTHM5iORZuAugaKuBY1
	 m2lABrj7Uf4kQ6zSZEq4SeaW5m1Ojd+ilQMi7bDjAQeowrMLKj1tXNDTU/gkueI+V5
	 KdjIaWAedD8hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6205BC63797
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167379788739.10252.483419709165119744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c3229687337a6137fbcc718546025b2dbed631260de53784547aa9284dd1c1
Date: Sun, 15 Jan 2023 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673797887
