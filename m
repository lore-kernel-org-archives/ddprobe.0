Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76222565
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 744B7C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665395453;
	bh=5pHEKrtvb0iy7BCTiEC1HbCx7A3JbYyggUUC+3BgAAI=;
	h=To:Subject:From:Date:From;
	b=rrQoO/EyPC/wevhHym5oPKrNp5JItJ/5rTxECEWF/tL+VYpbExknYDQg2PKRlpyTX
	 grOcouxwom/xVFcLYZ1wsv3/yk2SzkXgmVlC7Lf1l4QQt/hGuqP7JG4A2SF0GUT/yq
	 DMEFSege0i0sbl6epf+2MamHifqhWaleau4LxbaNuAOX6zXBdg5DMeCecpCyxKhdP0
	 yqj4KTvt/ZzfFtPKIu4Q+PHH6JXyN/E7nSthIqZI8GvxiWoa25pm+WcYlFpM0nzdyY
	 5kQd7EEZG4RLdSQpoZ/QAD4HCZcgR0X9yRh8nN/sARMNv9yQ3+qZRzLi3yp5dYIRnG
	 d/q0VPlz8OuCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D1FC433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166539545333.13564.3223146025182870431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 608759bf7feb024ff235d5eb62a0f07dcd2b8f4620ce6c106f37719bd8a30b09
Date: Mon, 10 Oct 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665395453
