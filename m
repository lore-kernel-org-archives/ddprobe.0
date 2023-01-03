Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD788F77
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88EA1C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672784487;
	bh=2hvcxou23Lf9eSy1+0J5G9A3b5/A3vlBZSmtj/XKmqo=;
	h=To:Subject:From:Date:From;
	b=IZjtvRyKQ8Yr+32Ubxo8IJ5meiLhFOkFm9re0zqlin2qFAJ6bURzn9UQOd8F5T5xi
	 mHCX5obvrNZWl3AjC9A6aUGoMem3xZRtsY0PJCM4aUsNwLy57DxGz0oNKlh/HcNHJ/
	 pZ4/0ByLCdxMvwjjSYJfZ6SQiyDJugrkxBR7xfNNP8BJQhv+pboNeVhruNxBHiq4JJ
	 DvJ+T8RSDinsX+Y/N6p1mfY6d26FLo1bKxqwoCayax+B9uqWD7bHjO4xvhfDY+dSj4
	 YaMC2RasoG1gKcOOyE36pe9WIAfrmJKC7QZLZll2dsibZt88orS+TohHeMTyVebvK0
	 zqfHoUzvCOvUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FC48C5479D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167278448744.23671.10057436883126461593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12e93274e3df1eba6ab352a0e958bad6993f99b13bca99f1398b1e87173ef09
Date: Tue, 03 Jan 2023 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672784487
