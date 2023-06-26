Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5E497F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 04:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 22654C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 04:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687752789;
	bh=MMhqq+dCCBrefya1lZBrwCTaESjCFBKD9jZKf3sly7g=;
	h=To:Subject:From:Date:From;
	b=UCd9lZDVmBYTxGYSIHWZzocjnfw5d0jOJmc8AdEX3elsOe/ehhOJvCWY5vO+JUbXW
	 H99B9Tq/UG5kwkgtGZSXnnbfEhYkITwIxkl+fLf/ye+ioHJu4nri3YMGRNGurdXhIq
	 golzhwwCVciIEqpPlkcbrBqKl9k1bWn7xYyUrtUQTfwc12Yh8UsI81qYhFf+RnFQtM
	 MVgSrBIbDPZhghx5GDdtvfi6hTNg5fwpH/NQZthWVOFZz5LE+kxiOx2/efjyqMGnEF
	 +Da1FQJqtnPFqJgixD8T6eJ7Z7ZedW0LhJYiW2rp4kph+X5r1+xgxAKu5KOq87Evl7
	 XnbeFHhHj+Rwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA36AEB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 04:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168775278891.13479.3595229751614218409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1be0038d3e538e407ce3dee6b500c8fa48058a220d3e582c91812140ccbd520
Date: Mon, 26 Jun 2023 04:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687752788
