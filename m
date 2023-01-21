Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E2362F
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 06:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2681C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 06:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674280925;
	bh=LyCKlXMy7BR/SLzpDOO68+TjUr33pjcnAKO8J2Le0WE=;
	h=To:Subject:From:Date:From;
	b=O+r5ee8+7VPpeAeytPtbeXjoJKivrHHP8YZkgeOQJfzHsEWMQBiieIoVQpbXQimFM
	 5lCHxTpUX68TsWq08Lm3ULvMNeBzD2DNwghyk07A7Hg6KOm6+cUn4TijuVNOVEDlzk
	 LVWGRD3u2+d+Hc80bjWU3dJynBNk/JhH/C/7Ofao0LU9vna2fdE3KHeOh20UGiAb6I
	 BjvltFgHxdfwKRn16LdqJ1BR0IC5prCk0aa3DrGdzA4NvdX2e8TeQLd6mED0aQzXo6
	 lGCZQIPgexZd6yLtzRKnHs5hdAf+hYsCxL1ZBZF0aIyNr8xD4u/Z9AxS7l0OWVu5Ux
	 42UI9po8TTR9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C804BC38141
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 06:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167428092580.19842.6859409092724782987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9be64b32f4ed7f2924c21ea45766c78c188878f5471b33093eae05525444c4
Date: Sat, 21 Jan 2023 06:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674280925
