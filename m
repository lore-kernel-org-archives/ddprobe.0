Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59FF2F33
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78591C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672662087;
	bh=UkT0v49v3yKRpdOmpscrvCyr1HB2EWJJ+6bO/anmGC8=;
	h=To:Subject:From:Date:From;
	b=Klx+XhrbM95elO8zHsYnQMUQ+vMp0nWniHQkjZCT/ECFNIFOqkVmu+G4czRkRX/mL
	 ojlw8Xuwi2/JwgayHAwFBfqL8gqWP4zPFvuIXzQpzpNzUtm7im5Ys2erffAM84ozhU
	 DvMN2jP+JYW1aJmEYyKwExeZtk/f5iYt/7lVqBgjAWusPH9Cf6w+8jNaGXQnr3NqYr
	 cDImJG8w60wL8NbOk8VfriaUOymAFFIo0D0XEoftjUyueJ95p3GMhQyHAe99wJOT0O
	 d2Wmnh235NW1az3JHM4nJPLufuKrqqDHgVzayuUkju+qr5cYDRklCNKCx7ujUar+zI
	 ROxASKTOKDX1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6046FC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167266208738.12134.2166400740649616662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aea727ac414a6f9d5ee30477aa567d61137620163b9203d8ff162666b889f6ed
Date: Mon, 02 Jan 2023 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672662087
