Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53F4EB30
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC18C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669464654;
	bh=BNbkUuizArKIFVZejAXiw6389dnLwj+XGyXOSXQE87Y=;
	h=To:Subject:From:Date:From;
	b=KgtkSertcvgbp7zyDMiVycKhl/b6Ua8G/qzU76VvURKdfqhr0pUTPNjiabRAT1Vrt
	 uGvHlOmXGG5huSzPtfaDkUHnIOIj1+/sqI/hJpCIEGDHHMbNU+UPvF0NtL1+o5Ax+A
	 tDhIxqLI4f6MlFO1WyK9nd8y0h/+XLNBsbt7slEvkgw0CHML2QTLo97weM+LWaPWc3
	 Ptrq+FCIGHcDdaZjZCPLHU+kK9NS2o+/HGmyk6CGZBi1dwV7CjZ8bwGRCgIyrpyz5x
	 +38NvfMwBU4fpzh84xeYJ7Yra2FPle23ez+MP5govWNV80WLyygXm5nFNHPhgz3IUR
	 UUKvXi8+6O3RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FBBDC43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166946465432.24781.3669767490363813545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 977a91ec75a59eb69125ff93ac4cca5af48eece9c8e97ffcaecf31b13763f7b0
Date: Sat, 26 Nov 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669464654
