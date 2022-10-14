Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B411536D
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7070AC433D7
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665722453;
	bh=922NrMyAPNqaDjE+K3O2GOrtY6Esi7GTPIs/xRH0SGI=;
	h=To:Subject:From:Date:From;
	b=Ix8K23AYv3wBgFQNmk+isN3xGy+EfL7FSUV2+wHTnLvBQFFzonbiVad/jxaemOkoj
	 ffoz5cZAbhOqNcHkEok8LEcItUWA6wYlGWtXKHPspo5+gnzu8lxogvbxQkB+Zi/mow
	 WheJzfuAwiEPdAFGxLzLq4Zf/8Ac+xJTO9VXIK1Ro1h3FDWsPOmyhJ5VxZQ14nF11r
	 5EvVcD0J9D4pNR/74t/2CVu3o6fXJS/VuOmgnGe6RSk7e+NtHJrQmvuMrXbahbK28t
	 IedTqvH0HTZUoKyOkDDm8d/65Nwo6Mn0/xp3/SWFf6uRbjb9Avv/tC/dr0XlhxuZk4
	 pLwegWRarJC1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55257C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166572245334.32100.14394990078524953270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3c530bddc5473852ad4a40d54c82691ab422886d84cd8f1789ec76de496613a
Date: Fri, 14 Oct 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665722453
