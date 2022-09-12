Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE85C7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D394C433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662948653;
	bh=v5KE59LdJDb03EmaLjvT6zOpg2KY9arUXeg4/BYfN9U=;
	h=To:Subject:From:Date:From;
	b=SUKTQCYVnA1CR385wkLVehdd167DvxWzaUiX69YzfK1hYsmaCl0EVc5GftLhT9jr5
	 P9R+71KSGKq94tBLxFIBc2MASQTJ6Pt1jPbyyUHruoowqjdMqGrRjTSGxyB0W8FF7D
	 CRDRkh7Zu1J9w5hSlFtUQtU+schK+X5Kqe243hAVxGLKtonPJzeHfU5e79b4ZjupRs
	 eEmaDp7gBG3lxstLSihhV3s+2lrnKyy3FbPQt/bR4EQMUcacdSyOOTMTs/3NVMonmI
	 qOTcAyhYCLgth8FopBfxOgFFhfTalqYfjYy94+iWT5HSTuJbgVP2r5fERXP8Zg6kCS
	 96ezxqfeVAJXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 530D9ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166294865331.2484.7803971985585994865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 208d172e7b85401e1a02eb15b17dc3ad60e2814fe67bd3cc3957be0c6f409196
Date: Mon, 12 Sep 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662948653
