Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAEBE1D130
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ec0k1pU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 737D1C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702924696;
	bh=CoO0tDuGwiltLjh7mLYqcfCcOZFN8IblKJHua9BSmt8=;
	h=To:Subject:From:Date:From;
	b=Ec0k1pU/zmccKROovK/Zs12vvEl8s3xQVVech5lqvhSZfLJjkajCPUZpvXdY8AOwZ
	 TNQtdfWy0Y4bQuTV+9oCkWBqfX56jWndNa4mwsu4yw0FSPnvU+jblKnA4qXZ0SQQAH
	 T5dHpXJeSk8bRAhGPryViRep4WEBcOCQ5t4fESKJTKliKQO94wv3ZEd64jIT52Njez
	 azZckfF9SR8jxN/Fl2eUtagct2PLzEcdOVv0oV1j/OWtSJQ4CPb5IXCUJ65W83G5CO
	 SnlX0iOHwVYsIxOSHMxRK03NFaAEu4hTFvYvXabNh01zfvsfIx5ZV7R4gpYtI8234T
	 Cn4Ym4ze/P6Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C922C35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170292469637.18074.12714904964959363567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7af50782911a234056d79436bfad56358127119f23db5cb371ee59a9308fc0e
Date: Mon, 18 Dec 2023 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702924696
