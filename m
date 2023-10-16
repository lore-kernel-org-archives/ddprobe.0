Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BAD1FB7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 03:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1c7kYFQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC53C433C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 03:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697426828;
	bh=p/xuZ9JnS0LfAK1ms4mpMmJmz9jNolsX8Mtr3bZZu5M=;
	h=To:Subject:From:Date:From;
	b=h1c7kYFQAYDEXpNtyd6I29HdfnJWLOQ8suvBssBtmElsuuSRlracPv/+E8aSoZo38
	 Mt3jQydIua6ikvBTkJqoJVN6HsXn7UNnTaKCy7UFd82Jfd3RvTVQK7MADGksglf48S
	 gUtsiLLOeTqVTDD1MsKAqChho+ZPwvPY38w8vrVdsgSgVosEg1YLi+4s9p+lHdEq7A
	 mtjOqrtcyncz1TfqXeQaBwnajSJcM72LTu+Fj3wyMlh1H9lqsSESPajfmxMn0ioZqf
	 BAlGQ3RUcnQndVgheBDrhEwtn8b2fDimwN6n8lskQJNXLTOM3T405hoBzMLYv0Y2/M
	 5iIHSdBriuqtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D4BCDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 03:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169742682867.29346.6637906995816950524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4902957f530326535c1eb48f96c3f052ee534def890a970b495813d1493169b
Date: Mon, 16 Oct 2023 03:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697426828
