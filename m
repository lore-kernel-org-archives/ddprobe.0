Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F677C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 07:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E322FC433D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 07:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682322125;
	bh=sARYP5zuXb5N5Hev0i3djgjCY6dP29k+VBvACU9TGIY=;
	h=To:Subject:From:Date:From;
	b=sIUN5Alb4T/OxySug54ubvOgHxeCJfsgMxrb7IvBhjpDoDeIaDZ+Y8lfmI0ZC+VKf
	 LzB+jJj5uVUlF35f+AUQDIQPohbE4VieByqKJ7zFeWEMZnQ8I5SsAAFPgrTRe2YZLV
	 bBTZvvnvQDcQBud1zx0U73LFKHOLF30+hAzHlcSSiE7oB3dV03YVaOCB6RCuo2rddf
	 fKfaJy0fb0hYpzCrdPx88vl8K4+Su1aljwrEhTd8mPC8Pw7I6SGxUm4N56AQJdI5sC
	 XhWSvIymauBfZayYaspltDA8ADoqNj+yX5mPFob5KaDWdC7ZcRBqIWMGewsqrMJM1W
	 t0UwXwLORsuXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD337C7618E
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 07:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168232212576.26255.16371114135308708475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9911136579c2e0cb712c67ed9669f97f4ee85e9e75ef63e6d60d2c4c01d59033
Date: Mon, 24 Apr 2023 07:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682322125
