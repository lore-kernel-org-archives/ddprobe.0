Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B394D7C
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC75C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667307054;
	bh=6ttAAgIRUtPXgwMnUD9v/BH7nZFHp17pjw3SDHkejjg=;
	h=To:Subject:From:Date:From;
	b=BB48miWD0wykz4P3C7qrP9yhYBwF8zu/E8A89jd0/W9BiLPfYohSt55C9pAVM/dcq
	 xJZWTzB/wnUCLzsXhx9TdobU0BjnraJg9aXPNR0/jjcBOdu4WWWaOuEZNp5PDCrHJr
	 EVw6uE2x3iB9UzELHN1rOM5NqE0k0H7w6/dqqwbkg+AkZ4iezeICNgYQoqVSJEwUI8
	 VYuW1h0S1IdK5ktAAEIr+5121sE5SjHTT2lDl3HF0k2kq7vcl0tBTZyGp+unZ1G42R
	 lvCVDmA4IKjo2R66VuG6h0o2ugNSbejlNxPH2IZZMiRbq6SxdQGz104EuxeUfRrBOF
	 G+TVnvE9Qo2HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52316C433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166730705432.2057.17464285944359171463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c3d3f0d9d9dab188715789d9c4ff7ebe80ae362ac94a866e536409a16c5badc
Date: Tue, 01 Nov 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667307054
