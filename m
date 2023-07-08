Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6174BA941
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 19:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E28A3C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 19:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688845028;
	bh=p4lFsC24P2JVnkAb1N4wJNCMWMFrxhj944ZgDJaEEd4=;
	h=To:Subject:From:Date:From;
	b=KI72IOIa+HctUjIioCB/cS+vKfTPazBsyRY+OVTKdm+GPO7VS068Ob/pakrDIjMdc
	 U9dURZ/y1RSBVBtV+GLrEulIsBByKfpxMitfXvyqzRUO9obrsnZJTxXgFlEofqb97B
	 cwLtueBvE8WxOgppm2rVbFdwrsalK5XXpyXNuY1w6cedHd5EmYMCRyQx9d7CFydvhh
	 O/ZtA3+/wu/HYXrXf+ooGE0C6On7+I+zABm6gWA44eOri1cymkdMkizL9igEwRtI5K
	 CLOg7RwKjcewuHFemZ+Am+lodUibeq1N3GmHAATcN+gBYY1QkxRLj/Nl4U2UQpiG3v
	 On0y6PYPvYvdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D30EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 19:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168884502877.15718.17505806946685262980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0300a95d70e9177d7aa0dceb6aacaba37248f4fd12564b5e02bbe76ca202d30f
Date: Sat, 08 Jul 2023 19:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688845028
