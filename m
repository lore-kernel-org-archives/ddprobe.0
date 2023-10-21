Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2208B63B3
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFQv35Rt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8234CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697885296;
	bh=xQxm82liA/XkdN/i3tAZFG8YFvjG5vh+MAG8ADswYjM=;
	h=To:Subject:From:Date:From;
	b=MFQv35RtE0ZMl+uRlwezCyeIfDxAjDPH91jznx5mOylCbklAylS7/TY2OT1J0b2Zd
	 qVPeCvpe7oICe0tAPAdr6VIhLqgxUTIgQg2M5UKyfTONLGUwsxN3HrC/nveE+yjT7U
	 A/fg9MxTlZliyrZLEepDTWk6r+h6YZg37FzRQJNDuEVQeA9bxaMVezufmXwIR6JOzz
	 OXLR5dH9ofyXEFamwI0hPD5SAlxwJL93i4Au7hSbl5JWs9LLZQKgeWkpn72Av/QZLU
	 /j+0Er/kqZQqJeHsu/D5urqdemUg6petIOAJGxEHzUQg2da0OLAKHSA0K61WRbyX00
	 lgU2urwV2dpbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D2FC0032E
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169788529641.10245.13078954827201770554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ef99fc39a14804aee037444578af816ecd22de1e07127ce4b64ffdeaaffe06
Date: Sat, 21 Oct 2023 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697885296
