Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461CA8477
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 21:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E709DC433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 21:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679348225;
	bh=LH2KDWUwWHxy160gQeiEkqAK0+qzreYzbrdpFfU68ns=;
	h=To:Subject:From:Date:From;
	b=eloGzpwHW8FI0xEZzEYbd4BrMEvzJnjTOyUm67qJEsqp2NAIlyhXgr7PgPr7YjlB9
	 SM/bQr8Odm+ILso2oPlciLjHQ1olN0FcLhrtWeQB+Aj4YrBo7l5xBIg2VanKgw4Shn
	 1F4YxBSaODNYTf7ooNFC665crVWZKz0d0ZCxW093Iam+bl+E2RB/3n9LtB6j5Ni+LD
	 CnWeBnEx+wmd8mutxiv0g6cOEZ8KN2wttkfVCjWW4udwzW4/iIW0yb79ybY4uy9p4R
	 03P1351N9B/e8FeF3oe3on/fl7ZEFj5/Bg7gePkMCvlRAemFyRenrkC4mzu2IjeWDF
	 zZSIAFZFVa+kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C89C6FD1C
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 21:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167934822577.9517.15924955306086504614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a653454ca6c55e41bce14958f2f0dcd2c22099b0e3184bd20ccd0178c4368ff
Date: Mon, 20 Mar 2023 21:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679348225
