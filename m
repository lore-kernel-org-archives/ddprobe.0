Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC88C809
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77DA8C433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666609253;
	bh=mygZNYIleZPbhbJ8livt3o78voaex4uDN3J6Y/GnVIM=;
	h=To:Subject:From:Date:From;
	b=dStaXR4WAf8Rco4KNiHXGNeb8Zenx1abIkPhnPMtB1XfWfioOSmP4Jarj1ZKd5LtJ
	 a/VxbGYVrGCfczRQ1LUpMh3MEntDzLillyC0RaKBzTS945UTxyfQJQbutD+z/4c0GO
	 CyV3aKbOIlWnodA9onpAI7qWw82q7dfp7KtiNQjaOiluOO50PDQgGJFhsjllKRKAN1
	 DD9CxS2rk2ZVU++w7izO6sKyIYUf1ARcU+IyR+n6qEg9Vs12VXkhJhMvYu90/tVzJ5
	 0AXh6ATB6JI+J6dYsl3yLHuREXpdNpGjwqmYSwp+8bPDCyBGc+Z/CdjTzXCxlbfpEf
	 jVv37d+6WSOiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541EEECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166660925333.29109.12067184996256161396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c069f62969f620de951027cbccea0477f2fb45f360794b8d81310706cc1fb6af
Date: Mon, 24 Oct 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666609253
