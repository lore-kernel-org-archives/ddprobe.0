Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5A1383
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 01:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CFEC433EF
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 01:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683597005;
	bh=foSyuyQrOz6eFkv57j85M3RqjuTA02lVUh6C7VnkwZU=;
	h=To:Subject:From:Date:From;
	b=FekNv3ZVo8BOLp98LZo8zWfmVWSfdo2CgjoyWH1Q2xJsN4Hlud4vNmCdea36QPt6h
	 ZHuepAEZOhxlaQ0LFZCpya/KwMqwRPuo+xoT/+bBTgYE6eu+FLz8RS90uxaeD9+TN9
	 hhgix/NIqCPDkvzgEtiJMq2TQiE7aOr22xNRvISyFnJDEBr3fzpZqltT8bQbn77/aH
	 TlFqn/FzwWsHyA6oY26J9oTfiN4u2iZuCWHSj7WRDf9jUDVQSYTkk5Uh+KN+au/V71
	 gEnJ88sbt6uWt4lM+nimsrh0fJY1aTEXscn+xpAgIVWA++N8JoLkTkX4w9UuKBaDVH
	 erDrn/Rk6g9Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3FFC7EE22
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 01:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168359700576.10633.17759365127148391271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f24403ecb5275a2a5f5aeb5edab6f5cfdec52c1833154e27b57af32b7974dcd
Date: Tue, 09 May 2023 01:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683597005
