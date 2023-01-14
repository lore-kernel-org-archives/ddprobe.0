Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01AB2F3D
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86EA6C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673736087;
	bh=f8KLdSZdsP+Y8ZzQ47CfJVC52W/UOaxaCqoic2f8R1c=;
	h=To:Subject:From:Date:From;
	b=O0BUIttu8vAj0awUGP+HCoBxOVUQIJ9R5tjveWbALD8ZY60kNoQyWy1ZZuEfqUWgq
	 k/kUphMK9gmxR4StwADNc2na72LbRaTdPretztFjNf6hXP4vuSTWX8KuuCZ8YGdpDq
	 Yxw4Ye5W/4Ap0XOqxGTcG4XVk3rzu1OyqzfVyEq1boutXWNsqQOdQeh4CBQR0vQ2VG
	 np+aHDtKvKJfoPe0GntdhUcvMZEqRRA+tfgSrzfmZFGq4ifjhXmO0/qnd6FXyFrqtr
	 xHfiPoNUNz3BEpivsRPir6cPO0HiBjxVX4JYfIlwcZRGEv+ECBKyRJfyh+deXWcbRx
	 7sasqpyK/kKYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B439C677F1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167373608743.29699.5657639056667011341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4066c4fc1e5a367d999106e0d0f665484b93ab548a6dd8f51581de07d4ede267
Date: Sat, 14 Jan 2023 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673736087
