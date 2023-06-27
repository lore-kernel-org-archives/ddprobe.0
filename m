Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF5E18000
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 14:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEB0C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 14:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687877588;
	bh=ovnrLCl9Xha6kF8QPz5fZHZ+MWy9wynt0QWfJ9126hE=;
	h=To:Subject:From:Date:From;
	b=aGlxVPOpSHitxFQFrG7FVv1aDNPukPyFPOaMMWIrcLeE7++LnLgGp50dfxTSW0aUu
	 rjXlqCioJoG7AlgGv55LuDRgQ3ZUJsYuUcUts8+W6hx8X31D9d4ayKlI1WyBdu/efw
	 f/x1LJbH1ikTvbo9MMZ9qvRblbICrBKcd94/XJ6iOpyDfNa8zl0V1CeHhDp8Kr2ytd
	 Zy8IxU28T8GyOoeQ+Y+MPZHVfVq1JwebxUeiRjlOyErYWPeSlBbyLQsjsk7DIJTbZC
	 GcDZX6+fqYX/ep4TJIWBDaFIc1LBHVua9B/nwzKG1Kq+Baqt8319IDNaf4Z2weg1Ye
	 YjFaqw3TA2i/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD155EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 14:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168787758870.6854.18394958822472642709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb30a5c06656ce0be67ef87abfa51bd0f3cb3c84025a2031ca3bf3a9006ac330
Date: Tue, 27 Jun 2023 14:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687877588
