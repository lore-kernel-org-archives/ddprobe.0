Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4367123A3
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 14:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED482C433EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 14:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675003986;
	bh=77urZxMNwjdBeJppkilPw6RElGr4dwnaHHB5nCkO5h8=;
	h=To:Subject:From:Date:From;
	b=OOXN13DzdohOtBMyhhYjZaB/12epIHQXNaqweqY2PevYPxCHoRghiHsIxABd7Mv74
	 NHpMtM2MRkFbhke0XQppkO5+zL+Kg915X+nN5ATmsz4fhKmKewJfIHWsTONshkl/T4
	 n6HQWD8qjvTIX3ueYYqWpA6d7t/yNUqAORZJtkvuh/va/KuKfhuZmni/iHT+aaLPgK
	 W2SDQCPSc76e5QkbGSW9DR7fJQ4r52ZITUuE0fCyZtBk+jxPYKyFLEsBvN4w7BTNxu
	 mBGYKqIALqDg9iq81NQrBq8zfBIAgZaH3ZJkCpD5AU3RC8iI3YAR4DZpo40Em9jHkj
	 CBwWpCNmZgA7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE470C61D97
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 14:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167500398582.11662.2079813124843365876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e599dcfcfd8877a0d5849b9550149cc81d7a88fc49983fdee0ca918ca3c001
Date: Sun, 29 Jan 2023 14:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675003985
