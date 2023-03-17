Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CBC7F1
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 08:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5FAC433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 08:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679041265;
	bh=wAw6Bba4o1zeHP5nZeQhUUoiS0TyQAsPn8DuIxSofuA=;
	h=To:Subject:From:Date:From;
	b=kqY8n+ie4XKhwDEvXJpufjsfGl7z0xuIWXeXsQ0GTPi2n4ecEmGbURWjOWtiLP5w8
	 9yG/crnx+z8Cbg/10myDtkOCDfEDJmtxdFA4zpR0HQ+VmzPeDJZPLFwZDfruMCAX2g
	 P+0Q65I2M8m1OjoI3Gx5HfnYNeiI5CAeAPwWQmHhcb8JAHEkzzq8wOd5/vdeSy0W+o
	 DZHQO7tfB6kxE285HUMATr9oVzA4q7kw0Y0PnQY+UmWrvyyP6hOyji/Jl9RzKGfKoG
	 Mf9GA4GuH2YhsC9rtISy4pb13fVm05corOoQbZvx0IL/EfKVB2BJ2yhw9WAiwBKlHn
	 K/6LdktWtrLfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0D7C6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 08:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167904126577.31148.2134637916987838065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5929cf470db11a657284735737512aa4763731b348b759e02f8a449e33bfcbc5
Date: Fri, 17 Mar 2023 08:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679041265
