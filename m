Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5CC3366
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 689A2C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664195453;
	bh=4JoDUn/tcDLr+p8t+yWz8WphjIP//e+9xvYeE89UPXI=;
	h=To:Subject:From:Date:From;
	b=hbzbyNn8lL23CEveBPuOCii58mUWBbH0i5H6DP3YS66gtLmZrWcJq+A00/h4meTS/
	 tyST4czi8aZdvZSAWPTB1jKowZx0R8xKhkqtABgXRNY0DkN3SR+/XiEGIK6qI/FLoF
	 vVw73mbezwHxZLnUiPye0ejFo7rhkwi0ZUUHUtR5R+nuFyEzrdm5lT72CzufTjUqPv
	 WlJmDp+5rDIQMI4pveVKb0NEdfXfSxHZfoVZK/zTVcykD8f40PHhoaKxmKGGTOtbu0
	 mna+ty6z5TIE3MWDa0rVjVEk2MZyPSZEEdxEe8TGe4NsmzsM4ohp0ni9oZeEJcjWuT
	 A4oNHd2eHJi+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 511A0C6FA83
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166419545332.20564.16165944217998069381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b6e35eb49b4b1eeb03081b99585f4cf92433e3ff819abfd227bbbf77844d8c
Date: Mon, 26 Sep 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664195453
