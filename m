Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E72C17D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 02:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAA9C433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 02:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678071425;
	bh=JuIuzv+tXIN4+d/dFVXTm8SQ9WEvWwiph3bDDaUbaVQ=;
	h=To:Subject:From:Date:From;
	b=lW+VQWYyMtWML8J1KlOVDM5PL/mfo4CM++kiL9Ss/XU+W0s9mebNIMx78AMQfnhdI
	 zDKdFP2YlMjqNXAojo0LjtN3DnME0ybxdCu6PMslmK4wjdKOzmV01J9ZVSj+hfd/Dv
	 Gazifx+Nv7TqyzYq+8eYnCV5cZ9RzkJ3xOFXxEOK0fhCCC1eXHLJNdjubZRhyWVjPt
	 KY6J2CkDjMtuCaNRtjBuQQCtGZngTucaFarnGlvxEdk0XK8r74df5hLWErV2PQp/v7
	 qH+HdkL33TW6EhJRIIxboLbz7d44Mm2nkz8xi2yWfbDkgMO7XyUuiOtbhU6MsFu2tD
	 bjiHvTHh2XDCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D06C61DA4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 02:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167807142572.19283.788253563786079475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af056b74a755ef897c871f92f7a6ef886f672ed3a232b3b75b764b504c870907
Date: Mon, 06 Mar 2023 02:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678071425
