Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF307E
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A964C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672495287;
	bh=JZpnvKh5JePOWwtZgv9qQZX3ChoOsXRbiR0h8slXkLs=;
	h=To:Subject:From:Date:From;
	b=mKW2lxsftJ5f2KUwQCJOY6LkFSvk2m8ThWKXztg/NHKSM5dywF5n9N0ySgpfe9eYU
	 x8Kc30eZcDGyDwgi2ZvKsjDjwH3Gr+hBXTmGYsE06hKL+09hfJpJLH4pmsminOicn2
	 RCWI/0wO1Qmg4vUB4gcZWGChA4fx3Fc3xyiFIuq7bwke9oPDhmJD/12xfu+l4nThIE
	 7u2BKSwkKy0Y8lQGvSDvxv37iwc//Ri+2Oti4tCu7Mw6BTCpQJ/ftB+0mUg7TDQJla
	 7v3Yj7zvNiSOedyDda9NAQQAtmUc+n4uefiEx8wAk19xmEDrdpxPoL0HwWTkdsk/pS
	 kNdZFqR8x7SHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7123AC3DA7D
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167249528744.4778.11065518081524390453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b42d975902e206f1862b600da8769fe1921048b289ba88575c99a11ce89d291
Date: Sat, 31 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672495287
