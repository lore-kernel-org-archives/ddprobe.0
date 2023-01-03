Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80418483
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90C09C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672762287;
	bh=zYzEf7jC5NeQ+3iIsRx8UfaIw6jvh62LKebcvOpT7yU=;
	h=To:Subject:From:Date:From;
	b=Mdp2Ria+J41WA5pDDKdEvBX6N4OPEYlLNmeiR2jJYhmFT9YQne+2QxqtZnW0tqtbm
	 eBwTzbI9CtbHftLvvTjH4Z/uS/PTUsYL+sLOtiBIs6AIBfMxf3WIhgF52jqHXrAjx7
	 X7WWXEiM52/4DoaYLHlD9FECmm0soxuG3z1T6HGvRZZ2e0Jauz3J/+yFveejRgjF3H
	 TTSu3dhJtvDdAT3H0ZCHhYf+4SlIyCGgKrhyN9Y3hriSVSrflWEP3+7oZey3bFB/TX
	 ogB98BTobO7Yl5Z6RRpARmvY6idL4XTX3IfCvHKHuE8mzRSmuD1oVqH7EkPIRgA21I
	 vK/aC2k4XRq1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F3CAC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167276228744.16700.14439377276932846199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a204cd7fe560b3d2f44a77ce09642669439001f4bb5b5dfd7c31219cc634047
Date: Tue, 03 Jan 2023 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672762287
