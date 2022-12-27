Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7D0803
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81660C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672117287;
	bh=FEJc8NS8gFk6yMI8yszO+Z7LDONdsv8oBxienwaY8lU=;
	h=To:Subject:From:Date:From;
	b=ChyjVVXfzXxhfg20L0LawPu1rW8SEMhUQSCGvvvmRPfUa7O8ukiIEctVRhWdSvMK6
	 oNccMWnFLuyANkcayUTYq3L49I3oJ7ZzEb+DEDrd4Q7fFzqSkQ0eTtoXqFDBdUxrmj
	 eNlkG/fK3fnI6qtc6OQddyae1NrxcvlQdsdrSppkpig+WVItjGp3MB4v/PJ0R10w6n
	 GoVM6N06/Qa3ezibbU9lN67UDqiFMcuN9W3ThyGrWLBf5wNvR+iRZ9QhkoMUO0IeP9
	 0oZmW9Q8HCQwRgYOpRLJBIhIzM/7hSemtXDHUx0hmgA36RaGjOQ9wqNoOMezfPilYy
	 4zBkqnl+PH4xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63872C4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167211728738.17774.16063302480223382300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036823b4a6956270476560e0f6b0a416b8cd626dfc814704e7ffc10df56aee95
Date: Tue, 27 Dec 2022 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672117287
