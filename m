Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A92B224AF8
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744067994; cv=none; b=KhI0W3HmZ4YAnQ8ahBAtMEZRiw2Kga9SGmrx2fAvnt2hVO2t2HpMX3jyLT0d3ejif4pJZEO/Wt7h3C0T6Gk2PdOyI4FqJL58O6sIj2McB1Fhrr43Jq1ooDJUyUENXXufjlCVKCq70nkCBv/s7goV5q1UpZICuYpVrwd8ZSIo7Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744067994; c=relaxed/simple;
	bh=PZm/WdDsGh3MU8CP2soDSUxGgdDJMexhspgNDXfDhJQ=;
	h=To:Subject:From:Message-Id:Date; b=Ztak1RTYJviGNe49BfHa1lAILra2qBWmx8T7fT+A0P/3BMjR/WX6lKwKuzju3n0qKzlua5vvJcbkfLNZ0Iz8gOAwmQY12t3e84ipzYEHH5pAve9nAynOTWI1W1b/rIqUvbsrLzrgCEkecPAEtoUxJplmDv/MQiN4cMzyDuNQlpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMqgFNgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMqgFNgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5843C4CEE9
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744067993;
	bh=PZm/WdDsGh3MU8CP2soDSUxGgdDJMexhspgNDXfDhJQ=;
	h=To:Subject:From:Date:From;
	b=RMqgFNghsPj54gi9lJXcIWmqricGAzzNzPv1ClT+aGLSkzpqsGM0H8BNerFQx9RHA
	 xt45be8/KKQusbH2ObK6mOFLWQEJvzhd+ON/oITrBzPr10rl43DuKmCW9OBzJqgfIM
	 3MC9CyJjQDRWiLKHQd3TLp0L5pXJQfk4L8QhAmZVQpCt9Wf6qc+6DLzEx0ApJqUD67
	 RRSPSUsQXB+JIA5wjn4Ic+rc+hXEHcwcapCxqFnITm3bDeTe6V9tNX3Z/otnzeW9v1
	 89/CLnYyDpzVJhEp0Bnu0mGyj0qwfhzNJYDpJ3jgZLhrerXrH/UZqxjPRkMqglIR6y
	 w03Nhv0HR+lsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C67C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174406799359.10740.15418449025699777116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63bcd087d33d35027587b911dbe955d96458d8378f6418e1fb2154f7a03e1606
Date: Mon, 07 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744067993
