Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 962148F4E
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 19:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 34A8AC433D2
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 19:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680378306;
	bh=EGHycB2nHId87XxoEn0/HFgYBET0CzqOvE8a+urQGnE=;
	h=To:Subject:From:Date:From;
	b=k6jkTBC6aq61m11U7gCCzJ2ZIDFImDhfXD/dyX+W0obErfBWCTgXu5A7MLaImx5Ym
	 FiAtg+dMlqTrvzR7VxSXs6ZeVTr6ReCKQ/J9g7Jnbnv44U8v6aTlFjFccVH6QFj2mW
	 N6WhmqM4Bij42jtjFHlZ9I6vJSDrnDUrCW1+Wn+B6QsWLVjcC/uP6PHs1y+0h6LGMk
	 r7iSGvwodxJQlcXgRbDWLocfA9wW+YRqJO168+EWgG3Km/2x/7bpJ15i3N3l4Jt6AS
	 EMkjRWZ6vU5dQ4YlnyDCYPjaEirSdgk3RmuC91b3q5Nd9HoIt7vzHrAQ9ONuPyCJ9Z
	 5eEQ+Fkm6N5qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 096B4C6FD1D
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 19:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168037830598.32306.15465174329464673969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e5bc47c8195690db4c4b48acbbc76fa06446c37a51849e09fe5e1c6358827ee
Date: Sat, 01 Apr 2023 19:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680378305
