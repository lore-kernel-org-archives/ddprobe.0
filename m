Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286F9A935
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 21:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D488DC433EF
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 21:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681336505;
	bh=w3wWLwK/21ZylIjlnkVhGJgrneUWyCoZSj0EfJ+iQIU=;
	h=To:Subject:From:Date:From;
	b=ENs/BvZVQmhMn7D8ds2au5TpGwoBas1IQWtAl152/LOiyDYO32LCOtiGfTKjumhgQ
	 xG9iYMwkIWT9pBFPyPw6UUTdH23WN6Ylyk4rDCyj/CnTy+W8WN5gWhW0SJpcqb9U62
	 FfbAfKIyPDxXfGlWz3mBES0wFhybaFJpb+bA6pCuaTw+ap5/ovb6daRcAc2YdJLDaf
	 VaXLF8uEwjf55ARsTosDvP4jiIaBA7UNSkkbT0jaBqQy6YlNHRkHgHtLVbp4kdS9xa
	 z+nHYUotQlxzGOtkRrY7tPiBBaXyxmuHlPcrrqEBuFyV+sImJy+KrVa34wWwLR7hDD
	 udJgQuAXvRcRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9053C7619A
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 21:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168133650574.2720.5629144447630578655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 246e0370a03268cbb23f8acef0a200b560d452c6027d0508f82dca8ba8bf45b8
Date: Wed, 12 Apr 2023 21:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681336505
