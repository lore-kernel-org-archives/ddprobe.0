Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD661D53E
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC23C433D7
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668630054;
	bh=OWzOR2eN7WpgRkaiOWh1h7YgTZfsSthaWFA1ePpcoPA=;
	h=To:Subject:From:Date:From;
	b=K1kKIE8J/1lrmasmnoX9+dbC/VgzCPlXwDH6WdtUfhTh0BdZgzFWcrXnqQ3TFt6x+
	 1MdNNIMsgg6FGp04DYse8cag4p6EqYhBBpucq1QcLRy1ZyGN4dRtWQmGnTUj1SwLpP
	 Iqe7cw3txjSA/fSgDNRjsNXf/XNl1or4W/aqLXEtAcOshEDycQb2sALj67K39BsGX/
	 2EOLBf2v+Sqtc9HZIkOSBsEnQMVplPfFOcCRUqXPattQj7byt4xy0QUgFrMYYH4Bj0
	 lQx7tA5Kd/CDjL8aHo/XYrn8E0XBqRzNyjDQILyPMgEGt9JQq45jIWE0tQTJIa0CJt
	 evzos+Dtso+uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F468C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166863005431.1284.7742930722831210443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d96b19af7cd2586345aadcf73f05cd9de88561bc86b6d1fbfa4291ae4b4f9820
Date: Wed, 16 Nov 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668630054
