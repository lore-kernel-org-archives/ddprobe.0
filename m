Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F397613A
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 10:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E42A2C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 10:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688205848;
	bh=GEp0RcMHrjKzOQ472xHqUA5efaUO6Zx39KzB+MhrO+c=;
	h=To:Subject:From:Date:From;
	b=sdX5zCDtNhm14HZHAQZ1CLjzdn+m0zp3ixwdCU5rzgfZkVmysu06jl+bqIOAK5r/L
	 fREbloBQoXWnK7DkS+31S9ixxzFxTzhCBcpra0aAQgS3MTrkL5Sp7zsD9EaGbnQpWM
	 N+NA45A/Y87VHbZ3OzYgHphzJtuo8DF/kCA6KR0laD8NwCAM8V1TzgyDD0bJ4WakIe
	 74upfQQa6J5aS/3FKLZu1+pwjyxrgDMIjzjrGSFLJ4D/Gw6GdqqyBy7yNbrZfW8T+i
	 KKwMY3wC8nZfW9ESAFydsZpgBObFVCBFtSROUs/PaM0jcDe0cwcmZrQu4eSsfE4J1H
	 osNjnGhMOBjcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0314EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 10:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168820584874.9279.12005619245643961825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c859fa96087ec7330c262609c6160528473dbdfcf25d8bf132b6a0baf167515
Date: Sat, 01 Jul 2023 10:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688205848
