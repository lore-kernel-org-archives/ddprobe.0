Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A991370
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iX1HBdKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F9A0C43395
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704076096;
	bh=Pv3HYCUFFO3Jx5FBPbzV551nFFBKnSBzsB50RyqCb/E=;
	h=To:Subject:From:Date:From;
	b=iX1HBdKa7EQNbAe2F9swr3xlEzFXhEk3hggLK60cOzqp+QF5rkwEconlQWl6V1OuZ
	 JDsA68VPfhKN5TFdiP7oQ2Xwtb3Zl19myB7ZAMgRBwNeUn67Dcpq9jCFO7Wpuzh4T2
	 HzyjfEr5qVnFQqBntAT9vNS4FhGgjH5i1beUYKUZ5Dulc0HUST0gpCS6mrPgTG0j0Y
	 V6S1d63y7xRLn/85eRQq8HSIHQYg/MmyBF6u/stHJX8KhgeWvzS58mpkA+oweXIhK4
	 l2GsLQD/zXWA0816PO8ZUxNE6AStds3k6CTPGOfQ4lKcjmsqSGH8NSU0tRr8e9cuL/
	 5w0NJHpm0rxIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C3AC3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170407609639.20320.13627386230001883666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c2e4cb75cb724b8f354d6121a900c7a4150efc06187c026c2b345c6d03727f
Date: Mon, 01 Jan 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704076096
