Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7F31FC2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 11:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3DD7C433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 11:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681038665;
	bh=ubNI+xelDXj0f/JNNqn25WckyF+pt6lDSGRevqqlsDQ=;
	h=To:Subject:From:Date:From;
	b=W4doTkuOUQDB9bY0h7XmlvigXyOoWCw06IG9kYHB6FN5xNKaDjMyhuBX70ZAwzUxg
	 ImSsr1DoUhXdytefo0mufeTQqyyd0jfVLyDu/8o7qjcXPZ0dlBDGvNYyencx1cI4Bt
	 veyuW/+DsvrlcTvop5bH+funXDow724NkEE6W/kuWmiUIrX459CqZfg+QdQ81RSRS/
	 1KxdISj5DlrNu79UMx66gztWiQSl2qxLg+PbxJ4/lvEC4navQfKhUkN5Od8PjAcOWH
	 aG8Ywcrp+/Wqr3XredOlRw/z/1O1vXmMemdw77RUAuZ6xmFa6t0vbi0s/t3/TAt7DM
	 GpYWAYMtZBEvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3100C77B61
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 11:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168103866576.2064.7814624403217560183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ecefe418470e0fd5c3dd955cba887151992504a6130f2d927e72402dabdaee
Date: Sun, 09 Apr 2023 11:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681038665
