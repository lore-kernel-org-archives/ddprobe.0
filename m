Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F990DF4F
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 18:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1F9C433C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 18:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693074248;
	bh=APZgSzP4FcOoIo3ZmtGwP7r1lzO07d/mn9cHhzHmWYk=;
	h=To:Subject:From:Date:From;
	b=Gz2wPXBPkqMZWL9KkNG9dxz5lF2g+qSYcHlkN8QVzCNSRJ9940g9+l1wvmovx1pol
	 AAk/PeCu5wdrXfKOP++tjQIMguBjhtsg+K8Wagcg8IBP/3ZOpyKfzZtHB0veejmOOu
	 l8s7Z7dUyXiVzm3s9FR1mXejX7GYB5VmG72IbwnvEnwOW030ma49faGcc9b4mFmHXn
	 ERqYjNYE21GA3kU8jotJQHjCzyZ8yDa0sX8++hXvtshnWn3ZoC6tfwxEmjlKKh8e8T
	 8DCpS2rde+C+W0y0atvoJn21pyyfIm+kiLQbg1jcMMe0kNIlIq3NKyokL2hBiQQf3O
	 L7cVVY5zkcijQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB5BC83F15
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 18:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169307424867.3324.1649281640962546078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052b04ec47c68fb0698141d4cd800c53306863a4e17f6e11a0d401a8efb49ef3
Date: Sat, 26 Aug 2023 18:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693074248
