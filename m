Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC44B256E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DC35C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669545654;
	bh=Y8os4Ott5lSVpIHs4wJQdvAELg7w0NrfNpqwmlTkYEo=;
	h=To:Subject:From:Date:From;
	b=GQIV70U+ZXx7dnm/13oihRVgTeyrrm2JYeqeRM+AIYbWiT+KBsOFj3IGi0vQtKAL8
	 +T1PTj3CdQqNRJsiXOXVXBaKbz5wqjUToMuyRjpp+F2u72K2zplw7t2l+vF1K3S14n
	 paIT0l6qNnfG/XGkE3joaKOttAwQSk5g2QkF499E5CCmWXjmjvHQEvvqHE6KBuT311
	 h5PlrLjZs3b069+WTv7aXDFcOAmwJG3axDz+UbZilNde7gIQyJPTYeKXZeDyfFjfyA
	 O3YRL2HodMcHmT4gwAj1oBhjlr5y/4ZBrVK+uXKTINYkTgi8X2OlqzIc1R59T9tOmR
	 hSkTqGMuHBIyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A7AC4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166954565431.30885.16421666428145457126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44da20ad5170cd59c950c9f54d2a9e0b5469ac18bfc32d80ae20d060e11a20cb
Date: Sun, 27 Nov 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669545654
