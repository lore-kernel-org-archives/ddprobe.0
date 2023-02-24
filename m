Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D1917C7
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 05:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18F3BC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 05:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677215106;
	bh=0irGVf89rqhXBxx8o1i6EmxnI0oZN41Vdj13o/uSmug=;
	h=To:Subject:From:Date:From;
	b=o9kH1qMfx4tPW5Pq2OeI+uj2Q4QRV0lqmuyJpI5DvfNcZBy2Ohff15284LMehCrct
	 4ArxxbVaF2bP/zXKljq3WyJxp4KKjzRa46rt6eq8aLR6KJJWl65NHv4jD9TJQ33CRz
	 q6P94YA+oDjL/FsUisp5Tve8Za45gO2B3TFlDH0j1Qo+d+Vswwo4zY/K3zFuJZITsa
	 b/lhrrqNCpVAHFr+HAK+9utqmRzOpYBejnxz+h5LjidbvPImKZF6BP25GN3Jj7Tj/8
	 xBqB9hqUPy73aLQ8PNdHiONlq9qfNYEy1j4uhlxyGM19MIwFCwyS74DDZj+IgwXtlR
	 YHvtTJK4Kz8Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6DA3C61DA3
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 05:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167721510593.11722.13971819433307321899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270b01e2532e0998dd13b38c88f9e723b5860247b319864cf517f29b9192d6a3
Date: Fri, 24 Feb 2023 05:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677215105
