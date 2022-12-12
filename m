Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB567475
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75781C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670887887;
	bh=eEKfh3u3yqZ+HW67slRUwUzMqd7js5Hdn1YVnMbjtAE=;
	h=To:Subject:From:Date:From;
	b=YSIaMHcEXbdGxcRRnzrr8JPIt6lZKRBXgCS4I0kkV6+Mb6LF6TL2yYdQn2M/JpLc+
	 DR2hdjxguUWqzLX1M6Ltk7HJMemO0yxUOG54XHNehRm6Aby0It3hOiCfKtxBBvG8Hn
	 zgf2o4fMV0CfMDOv7jq0wBbwn0zOnglmkyyCoF21XezejIENSpe3rV6+Ivd+G6owEr
	 l4G0E9aZp/jtioxiu5tufRxPe7exfb3henhSfTN4O8NZTDfKE9VBEI55V/UTYyL156
	 nkp+ULjbvhjQZ+TpIaQcZNiXWUkCg3/7+uF6V2RI8ptC+mQgQxrEe1l2deBOhf5Qs8
	 ek7gq/fm0zT7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60ADEC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167088788738.11361.11422147178990327537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e8885351a0d5337c0c585317293f03d1f167f3cffac919f5b1289372528e9d4
Date: Mon, 12 Dec 2022 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670887887
