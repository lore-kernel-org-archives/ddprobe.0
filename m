Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764D62310C
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 12:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5A7C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 12:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687521788;
	bh=oMo2BkMNdvrlb+DQBXx+IYGlJiOgsbF/8kqn7jyeRew=;
	h=To:Subject:From:Date:From;
	b=G9vttSxUqYV4R9I7GLE6JckaNXOWS9qrMTmPjxB1n7CwRK+JD0o5QS4CttJpxan5w
	 3rh8YjaXcqO53mixJduvbqlq93n1ujUFgy5vnXCJhwbf+kSw5M7ovZD04+mCtDFks1
	 YPZexQcoLXW2CSWZt/4mRZmj5et1SNifjna2DG+icslt4TGC7HYD2LWe2aOPfISRbB
	 RF/7XQkuzgsd5OVkmFnPuYfsnwaGfb19gWkQn2qMXmgp9DbZzp1n/77hPW2LTXZiAz
	 nhBHQF9rNu98oxW5raSa2m+KbjhOFLcYM+S1koYIf/NcUDK+GWGevbZQTDm4JtqT9d
	 vN60ZdgEwkiqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABA2EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 12:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168752178867.9723.13721410067806018064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0fabea8ceb1fc79d6208ab2ab3a641df3886072d71ea6749f546088b4a098d3
Date: Fri, 23 Jun 2023 12:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687521788
