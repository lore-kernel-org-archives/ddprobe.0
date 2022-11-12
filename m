Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBC529A8
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C5EC433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668272454;
	bh=1r+kaK23s8RK4hTRMbIuJph4mDCPw7pWeKxIr+COWCM=;
	h=To:Subject:From:Date:From;
	b=dMalR5ga2WkCjBHy0QEgiv7YJGumUPgImJuB8b6FmfOn+11TTG9HJraWUY5TeuR0Y
	 t5i0uLBYqZhLf+Tlc9uUuf/+qmsic90h7RPzqt/VpWsiabYU8Vw0Z1X+Ooj7NHZqGw
	 8Zl8rQnrcdCrLX+HwNwUOi2T0cnxysIZxU3Z1WhA5Ptj+rGNt0Dk7dxu4lctF9FtBm
	 t47fnUsPV+0ERbp/NPlHBEHf2NnFRbeob25Nsw3GR9Djy6uO1dtGh19gO0GIcYLl+h
	 qj9OyJ6tbrdkmF0B2REnk0ZlRFBLgRZg++h5wxECC5YCIXaijV/2W/c++9NfBvdu2Q
	 4OOSsfEBQ5rTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F39C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166827245433.31644.11153214901142864718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a08f2ab8621bf7e982393caf6ca384dfd86799ccf13aae1f5e1a7cd18fb02ab
Date: Sat, 12 Nov 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668272454
