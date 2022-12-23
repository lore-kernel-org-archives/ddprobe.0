Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1566106
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8464CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671787287;
	bh=VeXfVTfuFZAt0L/AIWcm89tP9Juoj8F5xVlRDzsvvxg=;
	h=To:Subject:From:Date:From;
	b=Qg0P3OVSWHRL8ILGZhpXjs0+dzDUSrVVwuVVZZMSvBAU7Zk/D5qbPlOZfANhkQbcR
	 jqnIuwrL11OCpdvhWeIKpoZxdhY0Hc9eusJWmoMJ8SD+IRp0lErnApSQU4Jw5bMakF
	 0l53xSckmrnZDzo3KkZDS/HxP/Tg6CErsAKLxxPdoUfMN6QMSdZPIPdES5Y6aQhCce
	 ZxvLmc38fBbMZs4sbJ1Ib+Jis94J1SjV1jUcwb/CqoRQYH7/mhOnmUZl17AqHzgYXV
	 QTXuhRlXVIDk1StJVYKv5zT7oRdOxWaYc+PkcEmgpNO+MBYmuLA/UJrHJAY0AxLzR+
	 Kn9dQvanX7pgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636EAC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167178728739.16209.11069001995149726330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ac4911bcc7169c0aaae1ef07088171e51482bfc88c051cf2cc01458a86f0a5
Date: Fri, 23 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671787287
