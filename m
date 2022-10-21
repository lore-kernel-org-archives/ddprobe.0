Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B802A6130
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F981C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666381253;
	bh=s7O5Igj4I/GUfJxVoQHItBg5pfA1fg1y35RIDXS4OjA=;
	h=To:Subject:From:Date:From;
	b=E6xnNCISVOwVyNW+UxL9LG+JMOk78sYNq3oNfWDl1jmA1696xMXEgfRkbWTmx6QWF
	 Yjgjj9yc5vLWz7hFYeY1Gp2k/g7zyDzfCgq0B/yUZ6EylubMy8TfBLduoaQwcJWdPT
	 +EYTIQ9FAksU3a5YZ0atTvkt76JvhJ9vIZjdr+LAzL5RKVWKRn46chB3KnaXXTOusq
	 Xx0vJTsVd0LY0HioQkhx3PSC7V/YGc6eICXsuWUzaVe/EWwrJ4fgaBSQh7VuI5k7ra
	 fS9o0JyjPxEBZxRboE6aPdyPn5WkMezFhxSSWhzw/C13fjmq43PHuR2Vm9IZaEKOxA
	 lHbTiFshAmUSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E88C38A2D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166638125333.12149.14908397481087760827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e6caf464b8894bc44458853a16b0f8b593dbb1a2149556bb82deed7b6e841b9
Date: Fri, 21 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666381253
