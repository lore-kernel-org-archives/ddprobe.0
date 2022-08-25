Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47CA1113
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 08:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D0B8C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 08:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661416252;
	bh=lbDBHGyE5mU4bT/KlVmvj+fKLhVmB55c6iWjc8Pvgj0=;
	h=To:Subject:From:Date:From;
	b=Bhd+9p0UpzKMugPWaiZVowEWuHBMaFS6iaLtLCxp5j1tUjcg9S5cMA20O8aheXbXX
	 gE5HAsvwZIV1LE8SjYoEsKQHEgAnXeui0jE+7Ov+iPFR6c7OpXTZ0lASpoSaxnBh+r
	 RE0ZlJ+nSVLVDs+oTni25fD3sjKLm6j6fIFNW+rPIJYRjEOL0q3msxj4hxxTlaRJZ4
	 Qw21HC9wTGLTIJTlt+nsfKxmPg+CJug0TPMXYv9qw4Js2AqnLbplH975w3Qt8uPToy
	 T7OosIQNcrjlF/J6mhYlx+8OFMVnZQuysk8qzYZoDBar47LJwmbvPFU4bJatBXRiv4
	 UDJP1McNb28SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50FB7C28D13
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 08:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166141625232.29637.11964092968930485562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cfcea8b1c92355fc6699e818a7d9f1d7da98902de860e8096c577a61310b6ad
Date: Thu, 25 Aug 2022 08:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661416252
