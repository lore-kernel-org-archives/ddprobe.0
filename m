Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D944B17C2
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF0CC433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664845253;
	bh=9xY2LUOLSU64r4ZxGuWwwc8qkERtJWVS7oPVjYjUrhw=;
	h=To:Subject:From:Date:From;
	b=g2z4wy7IR3NdtUzNpXiR9bTZiTfrZJELelEwSka4S71cDfXrNMegibdf6Fgg6xwkk
	 81D7sIcx7tsb6gTGi9N/K98/ZrLqz1hb6dOUh3ote12R7QDlUF1H8z4iB2X8Y/CgRZ
	 QN9S36EIapiPgYRQKBqaVcwVQrpAhYRLzjiqf7TT9CK+lsEZ2YjNPpNK7cSdYF34YT
	 zgidpGde4RRmYg4L0uKk/RWa2YXbAZ3MTnDN7corfwraSMHlZnuGYAqZJ7/oT3cl0l
	 M0za2m1x1JsZYBdRbHR8UvOlHIQcu7eBIa/5lyZLdtFWHczYJHKr+xE29Za/uTCYrG
	 BR2RJoHvC9Y0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F44C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166484525333.6932.111684572401762615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0514a839a42c17a6fa44bfa73e13397dc2ff70f6237730abe9fd35e7d1fb6161
Date: Tue, 04 Oct 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664845253
