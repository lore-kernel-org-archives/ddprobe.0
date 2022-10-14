Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C146020F8
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D7F8C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665752453;
	bh=EEeeClewErQ5P/JljsI1/WtZq6vQHT3mDhEN5IpUMlc=;
	h=To:Subject:From:Date:From;
	b=oA2ToCLEg0v5oIRdNYcEfHYJlEfMZVclGB2q08FwYPjqHxcGR/w7ETgKC+5kMunxR
	 t7jUDNnqWFUchonx2nA2+1QosbTRXz9cI8nyPQr+ZtsXrvhM/LWhvKqJmgNtVpMq7I
	 3lMOZLNwiXR3rN79fEdlBmgvPmXT4Wi0hFfCRywwRbsDB2tj4xjVEWt04eH6oPc7Mu
	 w77SWzBZekF8z48SZ7uovmKPoDFK+q5Qv1bZ3U5qrg9GIPeKmaTtZ7pXGfcfGHf/YK
	 UvtTALmvBPijkZlDe7b6/wt0G8gzlHpuShGwQWzyihhorBkcV2n1hkvERfZSIk7+7+
	 NPPDAfiYoExww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5442AC433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166575245333.30104.7901910870236018209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 505558b968467572cfc487ae0b11cd93206549361036bf1d3b193f12c1175191
Date: Fri, 14 Oct 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665752453
