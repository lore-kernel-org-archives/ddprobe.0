Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4733C25
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 11:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4299C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 11:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686657365;
	bh=w7BlevUacoGgRGpeeP8hYBP1CaaRskmaRTMID3YwUX4=;
	h=To:Subject:From:Date:From;
	b=ez4wngeNicz9vicUDgOXfjpp/PpHHcF/Jt2xM0n0DkUP7ho2DpDeuwBZbx42fu75h
	 yzrkX4P9IV/yfeQlDhYiaxsKuJNDROOl1Wp53Og7NKrsTxm9rwhlHvpqb+h/T3Hxqt
	 Al1sFxhuyJS9TMsv/ij2etb/giA7vfjICJv79d+8QWGP95EPD6dxBOwvP3FDdIHjpN
	 z7MYNwbq9raApgXWEE3oVYB3wFpH3kKK5w3W0qe/qYFPgRMfjaSK0zQR4q3gsMaPef
	 eAb3hmzHr3QEo0LpcmzH6O5PLtQ9JpaF8DGWiuHxY3mHJkCNl+eBAZ/RmDB3Fu7/1E
	 WM1fJfDiqpUCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA48C7EE29
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 11:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168665736576.21643.271887986786134178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf84d46069858d04ca2b1d3fc389c44675e71cc91c52cc8f29946b374747c557
Date: Tue, 13 Jun 2023 11:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686657365
