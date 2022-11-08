Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC67C2101
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ACECC433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667931654;
	bh=FiGhYWVD0jmhp2VOeajw3YqnuwUvbNLlc08quFw4Gu8=;
	h=To:Subject:From:Date:From;
	b=A3XDM2RK6rPagaOCuP9nqcsE87D2KuK/QYBqdWKHP6P8llr+ewBm7xcUwNP8qUs7m
	 GAU/E1Sn9VSfVYfLPZcqv1frLwa8OqrfkKT9megYYOBSFTdjtvzYp6kgzhxQ4gP7fZ
	 nBhObmea6B397n7gtk+gH/6j2EAJEfEsuPBjLOHbV9Ra12CrU2LsF9neLNEaUejqwO
	 5z5ZCqr8DwqgqhLWjDRlNB7mydDsQjSTZXw4nY0TzHr6nwAozfFBzRc6WtkxDvwFD+
	 gpLsnaAYArvIAM2WAC4prdW2yd6mdyKBb0JKxqZCQ9kT4KW3Sgjpm/JUEoFvbLrj+v
	 uFCWoFLuBggMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61BCBC4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166793165438.26487.6128828403163851754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5b61af6bd65f578b5b1fd819749b389d3334538b5c7abf4238ee9afe434c8ea
Date: Tue, 08 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667931654
