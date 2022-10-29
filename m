Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1FC77B
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63F5EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667076054;
	bh=xaHDpaAbwhZLzXt9cpbCOYaUODetIgdnqHBmOZ4G3NE=;
	h=To:Subject:From:Date:From;
	b=gt/c4cFy7X+Vpte7oqSaY9VPZJJ+KtDVpnr1gB8ES7GQmYPw5p4NUTK5IEUGbrrK1
	 d7nyQymIMRhsh+thsZZNyUgUOysHbQthXuzZZ6/LGnixwEvJRAQCzTRexjutCGUL2/
	 7qgwSPShH889d+SsJdhVV2IkrHCM+EMy55aeTrhMuGZ62UTvYktFn020/Aoy6SNA41
	 eFXqkQf30rtN1luau/oZ31WOk0NM4SMn055xRvLXmx51oa7EyYu6Y/VXC/Wk1duAVj
	 jM7IfIdkpf/rp+L+XsMrz0zJUMgWbQL+vMZhow2VRjfpJ+4msBdKCKcQrv4CQwJ+MW
	 Z2l+MU9BxyOjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51BC5C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166707605432.23026.17817598658053527688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd9ba03452ecafc0ec2915a1d03b47b1e841c589d3ccc282d30c51f2e4a3ed5
Date: Sat, 29 Oct 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667076054
