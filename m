Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65479259D
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 13:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 072B3C433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 13:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679147526;
	bh=y7RM7kW1GxYPzk4GZLguu6A4NbnsRvg/sUvjKh4h2VU=;
	h=To:Subject:From:Date:From;
	b=WbDB+OjZKGhRD2VDlSEF/R13bP6hOkt9/ALg+z2yWbi9hdKqsGICBZTHz7fo0x0cZ
	 IG+a5hkUrVn7xpo4TFJxMNXY5TrR765YPvZo7hywkTRdfR7B1oqw9SOeU2i3VZFSgd
	 4W4h0OZA0/HBBxic0kWmgpM+ygF1JXucRUUWUiYWFj4AzUvDH/glBEPgLhsWyGx2c9
	 AVycBEUYYrDuot+T5ilu8WNDSCsGDZq7tVnC6i/PdhRzJPod5jjrm/hdz1VI+P3RIy
	 lqDqR6EqvTVdI77LQv4HgnCA1264oAIH8+3OVih/h/dkx39i1VzamTiSMtmkDbylB6
	 DrlueGqaRk7aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3519C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 13:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167914752583.31524.17433224095107513916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8798163ba057f40587affbba85d2d9b0907f3dc815a826ff415687219c8d1326
Date: Sat, 18 Mar 2023 13:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679147525
