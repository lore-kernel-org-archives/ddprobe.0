Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214D017A2EA
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766324034; cv=none; b=gt7G6INyZ+vz3Y1vHiF39SYoLPCK/zg8Z4RNwR4Isu9JR66tByS83YDWs/VJhP3p5ZMoW5LJgpVNaaFixk/wjC/eaQt7X2ZY0/6fUCoMbYV/jE8f+nL/kZ309d9PgbmeGNCY9ZNKIGlMEkiKLNdC7NyCW4rGUZBIOfaW1LTjilI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766324034; c=relaxed/simple;
	bh=rFTTs4diHrZUYPjcxg9E+b4lW1irF9r7x6wW74ghTBU=;
	h=To:Subject:From:Message-Id:Date; b=LWwuCKqAWb9BAgToJdmwzh069y2BiUdGwvzT3JRsIb2HBL8rAOzWoN12Zse1xikQtkXeuE2n+lJtZ4RPmnpfpiR7V6thEbE8nioEXyZPM4J5NpJc/Iup7XSJBrQ6EMNN1zxTzHgFO0EC597KpF8yzVIO5nm8bKjjBcFUFVxKpX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPJ5vmU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPJ5vmU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01EDC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766324033;
	bh=rFTTs4diHrZUYPjcxg9E+b4lW1irF9r7x6wW74ghTBU=;
	h=To:Subject:From:Date:From;
	b=CPJ5vmU43IwIorHR3ufoI3rggMTav1LZh/1KVKI9X3aOrpr8Hq5BdT+yS6fSB+xi4
	 hPDKig0yd2bzxIPUT1C3rQ8QWR7KPqriZwldWlRl0MMDF/X7qOVdG/rhlsq2W1RtB4
	 32n0C8eOCYGbXjOOkH6j4oNBs1FJ0kpiEfBwfhgRJYl6ZWQjkYM76qKE3TuNPWYHdU
	 L+osPDDhwuVmHtVdbIJiAaJjG1PmkYHUjr5bElPrX4WlAWbSKqRmeyDlHQooaRwpiz
	 XV3xIhqcoxj6y6jeHhfJEkpc5AkwLmvtWP6B6h+IQSuNNvLmbezh7tZVeopeOlglNz
	 BjWf+/bDk2UTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9006DE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176632403358.4223.13911072901442451387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036dd8203d546592fa722a28588b4454fbfb8e141b64aabfa6d3bbbd204f2e21
Date: Sun, 21 Dec 2025 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766324033
