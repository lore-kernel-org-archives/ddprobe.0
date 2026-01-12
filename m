Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C06630B532
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768223634; cv=none; b=N4E1S85LHjCjZH7S6ZY1RrpjWoHKOW0rp1lSFCv94QXBDq+FLAYasjSVs0wdkgAadBkRgYcc8WFjf8u975PmBTxn6VQ783IR//erA84uyyS2gKbdb36JHOp2cuszZM95FxUHpRBQr6UAfZ1nwYuhlo6Eievo6LqtoBoDcpHHlAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768223634; c=relaxed/simple;
	bh=PaJ9iX8MN3SEjP8JdBiP+wcd4GbtgQzeE4COrnqBgjU=;
	h=To:Subject:From:Message-Id:Date; b=SuSGIQyjC1BWF9+lPBFW0Fglz7Yh6ul/EEdMdBecL/C/CwPzHfC+sAt17bE6+j+tdIaYIwXNTwx0CABbHH/delasENPAoArlEunPO4hDHNTZgCZFPEzDM+oprZbi/aIoOcrKxDLz8/fLYr6xeeSNMr18m0IDQUAv1mD/lkppEsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UX6b54yD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UX6b54yD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBA6C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768223633;
	bh=PaJ9iX8MN3SEjP8JdBiP+wcd4GbtgQzeE4COrnqBgjU=;
	h=To:Subject:From:Date:From;
	b=UX6b54yD39+h1RjS3QNhorkjzAP7CuUgAP7UtRWwLedZKf+ITqZj/OdeFv6PM1t+a
	 yA8C/RZE9sQHCj3JjdwnvNhV04x1kC47ePfczZGw7R8OJVZaroph38bH7RKnbjzRFq
	 x+VwNB5sBV5u1qmqJb4S33EakM7bImgW+vhnujoAG/seSjUw9wLT/1LWeNtf4n9Qu0
	 9nuX7kh6ZA8BUk34n5Qjp74uV/kVCTH31QO8Zl6veRuOjQnsCQhZbJOiBzFlDRsp2Y
	 Qdz05Dkl75nwMZIH27JBiM0loilzyUpgJ9IXXG+4yF7LHTK0E9B8qYNVYfr4TLKAqR
	 x6yo+Tku17lhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB6C9EC8B
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176822363358.17592.5427834986505694824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e8b6491e36338b9f53bb680c860583d5ac0128a969e84e310e99fc36024939
Date: Mon, 12 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768223633
