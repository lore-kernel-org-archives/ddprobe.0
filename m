Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84CDD1376
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 00:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1323C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 00:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686355686;
	bh=HtVC+KJBvzlcFUcUxveh7wSoljhE65M22vuX+MnxRSs=;
	h=To:Subject:From:Date:From;
	b=aDlLprP86fvucuWCkNk1058bz2mN8IsR3AhlYM4Ywih3XLnuGAqPR4nqDkNrBoiY1
	 ZB/ox8mpn5g9IM9SjtDs7ByNwhWz2qzCr+Eh7+LpIpFjKWwbkUpU4zbNTfwmplcxlS
	 f4IozpUFC5u5eRdMUki/WwpbM+SnNP5ZRrqap1ZtIN73gumJ5OIxh0OWvoWxLnxHTh
	 W7BEguiHS6+RLqwCifgih17hOkWGhPVQFqFDtuDaaIC4J6bbmgOmZaH37dx5i2/3iF
	 xMnxKfE4M/ThI9QS6gdNUNbVuqSvZt+k65hjiz2yHOHJvA2mlzjTi93WnFwcX4mXle
	 nN8klo85zwADA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5706C7EE29
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 00:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168635568584.14063.17044208799174427601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea3561989cabc1f9213c67a8d19fd575c14cdb54259ebc7abb164f5dec3df32
Date: Sat, 10 Jun 2023 00:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686355685
