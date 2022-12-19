Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD3B6FA4
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AA30C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671473487;
	bh=aLCK0LV9YQkK/NVH90piAviXgKlhD6jnfHLi29vzGaA=;
	h=To:Subject:From:Date:From;
	b=ruVOc0G2KwGOBInOENHoOhCWKuQhF5+CBft0jn662QbaTWhZiqtFHaMJbf2VQpRGR
	 jDOR1T62xs22+YLmudMZil02BOERvVzh1pTBK7SfX7SwUdbK/K82Ver/LwDIjcGZwB
	 na4wUXSQbarmiMOj5qS0Z7XI0pWyM9tJMiy3mHKhNnY2aUfCYPXyp5cWDb3bg6ItjW
	 //z5kzsn47bgsbK9QxtUczBKHfzwgEQfCSt8kJ5F6zfsRzucvVM4XXyZBocKNaOy/b
	 31QnOHVmoGLK6f0jrErm44WIf80nOf4aIHSX+xkkHb4ugPhuNpKvvWDKduE/1ieoDO
	 HxeXsWCeDBhMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6991BC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167147348742.16208.11148780231648719806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b2ca1534d2610d11af1c28a7dd5ed7910b59108616fdcf52ff6956f05ca9a57
Date: Mon, 19 Dec 2022 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671473487
