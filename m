Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6C514ABC
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 08:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sk9A9Lxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E7FC433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 08:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696666628;
	bh=JGtaAUWIzYzJSKArIepGz/VHgdQtrCbYcm5hxhBByR4=;
	h=To:Subject:From:Date:From;
	b=Sk9A9LxuOUt3LPt6G9s4pOeOYQrrZUwu6wlgqGR095iv8SkncXSPscEkT832GQemZ
	 8u7rGL5TDksHP+hDLM3MwebZ1bbwRb4BWLd3wz1He7yH9PDXMpNrxoFjwFIav+fNfW
	 Nm4jGroIMcIYWZ4I8d1FiETWsJzzAeNkBammx/ZpvMEtum9VO+ETWPYcIQQkPjGrjE
	 EzBaORBzysjM3cCYUVmol2E+UdruG13G886iyFKu4Wy+oJsYWNbUf/PCjRzayCZVQ9
	 a8xIzikKdBHe/1xTCKMUKmj/Be2tOtXE/s+vHZp8hvlZn0Q0t2WXX0XhblJUOCYJv5
	 Rz9AGxRKBxINw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39E6E936FB
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 08:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169666662870.28764.8786693289754695713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1b8bbbc055ff04be7d4be784e987c1f539087b1166a1beb16fffa5b8a1e3d8
Date: Sat, 07 Oct 2023 08:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696666628
