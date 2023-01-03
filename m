Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD25F362
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E66BC433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672765887;
	bh=2BaQu0BiKZuBg4D5DE9ODBM+t1ZIX/K1HSLCb5zYr7g=;
	h=To:Subject:From:Date:From;
	b=rxeuOXkzI6I6pzwUUltPxznFhXDHRpS37uzDsmFr98hE3xCpuxS3tSrSoYe2FGLAr
	 ou0Sb3/N2uW0tRC9oZylqTjnUUHqzNzV20RWHECMEM7sREgngqz5TkDhyGu28gGr1g
	 +REznpSp/JMF1DuXIUbIYgfFSWYBVav3j/dAUNJdaX/SotHmauB1GOh+nKekfgmAC9
	 1aCN+Eo0wPiTnjp8wDLUBEDmMJmnEJYJ1mkDjUdcNeYVh3cE0tyaMEupnlUjXYnHi8
	 GUzXluoSSzhRyeCyXDHgULrkAp33CaOcY09ykO+yaRrXoKTH0ltE97MkWZFcl7QCnp
	 t/A1a7TIXFbIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E52C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167276588738.24814.14406392743338676629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244957affde62445833ce9dc52249de66cd1aa278a7a23e88081392265e10183
Date: Tue, 03 Jan 2023 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672765887
