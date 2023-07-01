Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714982F32
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 23:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D123CC433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 23:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688254448;
	bh=/O5xu24/yVSIQ3/4PAQSACV+SO7ORXW4Zms6njEQyRQ=;
	h=To:Subject:From:Date:From;
	b=BL7BYSouMr9HinLh1oZEkvrjxwbVLEKvdXa3ZBxTk0ERIVhvxN6xIOFZAqTuwiJGB
	 gQ9H9xctGfwte9BjDT0NSR5iBYKTPJv3Wk+PvWGccU0zAIcjbL7/D2iRqtv2onLUzO
	 dwKcIziWPHiKnYpAg5U+BDVE68jPNgdg9m80E12eom0dAlUrAtIbEtw7Bn1q55URa+
	 9hqwbyPZNp3729vOc7uL7yT8Tg/MaOaWCmwrEfkFJRcJHwvKyrns24eLh0Bz/NNQ5Z
	 Dxsfl0B2yL3ad+xNlop8x6KPTXbaGbfqBtiNBWyhpxfLovk33nyoj42ojs/yUV5Y7R
	 rTKB42CfTi8lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6078EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 23:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168825444869.28752.4480448199240149862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8128e2dfdfc0358392358a4fd517d937b5abaaebc648ab36369439944d32154e
Date: Sat, 01 Jul 2023 23:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688254448
