Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350DC747B
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 18:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4345C433EF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 18:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680545165;
	bh=K2ovFi/0sdvhFDi6dKCTSmud09qu2bDwGTSn3tCVujw=;
	h=To:Subject:From:Date:From;
	b=CqLMOLs+FUCzHEn6bVE0Ix63ew1fC5EjOKOIG3U/Snh9oBcW5XRvRgunCGg+6LAnl
	 An6b9a/ZqEaCgKIWFy5+cTF9WBCfwzEbbQ5O1hi48ebAQ3JMemwtCdQGAn0gCltK9V
	 +cFYyon0pBJYJ/pg6nK2xnKqnsQs6MZEkHRgHQHYNyS8zXkY4wN7l7/bktoSwH6acI
	 gJPKTqHmfYhAMsdJUOfkiHl6luUh6eLPa3SCeMbwzwy0ja6Q9wCWmdvW9eikCs7NDP
	 9b3oV7oKlRb3iim0M3n6moSSk5Su9yiTJFK5QM10oZaWhN6rV0+/y1HkYmxppVSCAv
	 5MSwoVchdyXPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF38C761AF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 18:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168054516581.15454.17387309275679259389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 091b210b123f196b15f7070b56b58fc2d6bc9b95246751126da0842d4f820650
Date: Mon, 03 Apr 2023 18:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680545165
