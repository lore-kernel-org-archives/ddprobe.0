Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 917B52F5F
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 12:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED1D3C433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 12:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685795286;
	bh=V2zWF0hufItRvVb6FROdk2zRph0BLdQr6TpFFYxgB9A=;
	h=To:Subject:From:Date:From;
	b=ClQ43aLmA8eifCgXOs17AMq74gKyLdH4/n6YhLspO1vX/l1kIW0zFnP8NJhoCYtqT
	 sIhALQYi2AR9tNZV1c7Mtx4pfxVXhQWHBl2ezgSXPBqDafXiq8632EhLdTNTIrmN1C
	 EImoENK7ZDjMvmK+NVANAxhPzwC+bt8FnR91YFykJ/RfYWmUDqvN33zaM6SGHaW5fm
	 nr0jR/te83c2vt0tBUSQMr/nsWrE42q4jZs2osIAUaI4rFAw9EDULIyV+FtckxOU6a
	 LC0zK3qOpDr13oMtsbkeabOiRPk6hB+RMnw93oRfgmSuK4qOitnapNPrveST5EWSRs
	 +fCfJ17zGOG4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA1BFC77B7A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 12:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168579528581.25531.15972680415395409609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c97f22a625dee109ae8b207b374809b7c6a95673be25717d25eebac9e950476c
Date: Sat, 03 Jun 2023 12:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685795285
