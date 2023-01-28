Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492D633F7
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 19:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E34B0C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 19:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674934385;
	bh=wR0GvwqFp46Oeiozqkv2eU/qy4REjIhbsr6pUBEpYa0=;
	h=To:Subject:From:Date:From;
	b=idlSjyR50geWG4fEV9XWlQQqYAksFjq9BiNl8VO4b/y7PXz7OzCiOWuV7cI9XvdOW
	 UWCZWA+RQSQGDQ8HOv8D2IQ9hSCy/WDtiNWQhzakXpOKMQsMFvCIfpbYxl3uHN0Mez
	 TFB18wmT1y0r4ofgHFMZjR6xOCYlKTkZBYKA1fVtV6GYPC14yYgSU8ArLdGq83z77H
	 7uUbPo+zX8ziC8tq6ABtltg8dJAxZJaP91u5cFeu5hNnrfsPbeYhOWQZfuSUxEV0UC
	 Tq3z+SqcCbuXfFnKfTmOn8g9czRwRqtzSPd4dNLyzfKdNt3KXjzu53UveP9Ur+Th4r
	 zz8ItSSQTCSbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C938FC27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 19:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167493438581.11310.15599850234170557115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8319e0f553f2ef310c24048145d67443b44d4d15644d82ae97fb55e7ed66330
Date: Sat, 28 Jan 2023 19:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674934385
