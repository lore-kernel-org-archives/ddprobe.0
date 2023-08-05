Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 719A710EA
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 22:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F8EC433C7
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 22:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691274788;
	bh=W2+UAAAaaUMSbNQPUZQW7RY/sjM8ECCIxyqfRRmi5AM=;
	h=To:Subject:From:Date:From;
	b=J0b8tKYOFPyuO8ne7gYDoexaCmT3hTjmInbRk2vY8jC4/t3ObIv6gU6OkRnm+cL/O
	 iyP6hureaVYeNH6yiOEtmWDYn26bywuFC3QbIZ5AFhqwAwkqJYHEMZoBadr/vRIAyU
	 a/GzAsNWSvKUimCnJAGOpLsp9Umv1zMqc06j7Esui72eV52AFNCtuN0hI0lsX4wYjL
	 H35IUJhgzjR2HfJC5PlL06njC2MXaNTYYOveGp+PIcendqlf6nyzGakD3q0W072jcV
	 X3l8jXt2ciux7SHwVCvuur5ICJap4/EEmz8e3EYRykEfloJ59zQMIHmilMpSgKx5/5
	 ljuKJl3526dQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8E8C001DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 22:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169127478868.9965.9311604216374210204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d36a948d59d1c253932f0f282278db7c09e7689e6b4c4d732f23909896b723
Date: Sat, 05 Aug 2023 22:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691274788
