Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4738B10E6
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 01:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98BDC4339B
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 01:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683337685;
	bh=iX/cimv2fPy5tVNfEAdS6Fz5gX3pX+yqvD988j1G65k=;
	h=To:Subject:From:Date:From;
	b=uqdCaA8b/t9tqPs1RKSBhEH+UlrOJg76ZliwjqC7ORBacXt8fuAl9RjjMjJNw6/O9
	 R3MItc21SqbO9I7kcCW6Y0sWbgANqt29V3XHu6z12zRrW4NbEW2OqPnu0vQnxLYUKs
	 c/4JmIbZazaB6f5eJsPH6H/Cy4ONNesljVkaxAOuMxZGB88TJO6Iq61GWNGXAlcoq8
	 RPilXZ4I+RXyT4w9MRknwDGF44Dcx/tP8J3YgQIPkIGwKr2vWei2Kji1a7F1tBNt82
	 apgc3iyZrL2zwV9D8xdcb+0u8KxKP4JkTgDGISE5DZm27FjHb5ubcwUGvAj8x0pMx8
	 BGKYqWWpNz4Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC446C77B7C
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 01:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168333768576.7012.1308623733868879762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f48bb80c7c326c3b73d0dc262feec19ae7abe8ca8dd190ec618036482093b38c
Date: Sat, 06 May 2023 01:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683337685
