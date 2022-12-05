Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F1D848A
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F6B1C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670265654;
	bh=iqe6atunYU3JBdMASCU4yrFKOpuJjLw/YD3jEwVmLNY=;
	h=To:Subject:From:Date:From;
	b=qLs1HFJ/ske7LoVEGa501CPN4aeSJjBpUscQGHogi6qwQlLQC1XplpP95g9KmXD54
	 MYVJE/7r4FFFog20BQKZ4vNKwuuwpEd4V9XvThcOTRSz/xdMOh6LVTu+jH3zT7PUMr
	 ETn6g60Bq37M+v3PibXkfk1pyY3nH6D2yT6VxzVNAB9dFJYQl5ibYl/KaDtndc4zLi
	 JS7Dd4Ky58rS5SNEmpdRMOMI5s+bdaGAN3rAOUJy2JiMB9xWKbzBbFzNGfRN9ZmCso
	 5w8Mz4CujEJTgpa+fVYmnGt7V/h15ZpeZgILH3Kw4cjEMkKh85WuCro1EHDnwCkNuA
	 7QwuP7ClWrg4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B515C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167026565436.8259.17636140926829618260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ed7a34e8813445f3328c48e3581f74e01deb4b1e51d66f017e31b1468d19ff
Date: Mon, 05 Dec 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670265654
