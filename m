Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAB21C06
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 06:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FC2C433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 06:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674712985;
	bh=YKXkPErzsrS6sAMerRDvLr2AdIFiRZEo5dxoz9eI0hA=;
	h=To:Subject:From:Date:From;
	b=QKXgYvxpaPeg15jQjg8DuyarNnMLHOEQQDH8xSrI7hC3wtEhAe+K62Lk9gSlLHMYx
	 l2Himwjg/rx/Cf4R1u6iDf32rIBKW0rr3yYFV4w1/yYKq+ArcVfdYI1ZqkibmvCwUY
	 wlhfSVa/E1k6xa8XBhaq4Btk48P7zlxOgSsEbgSL/LXPOUvvXZzl6f+35UBb+P77r8
	 MtZxG2qAA9/kin/XLqM8taL/LXv0AJZablLMVdo3FFcGKphPWIBXCwxnLibGS7IzL7
	 j3ZS3jpDHphYa6LtnUGn08r2VWszSLkS5GJGtIval5FFrC9tj2Bt3ckagQ14IIgM3d
	 7PvEWJj5BDUcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9260C05027
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 06:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167471298572.19900.11461715796529220368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4f9d1aca588ce49b3eda331b0567f01ef43c13bf43abf1b24860400267e4e2
Date: Thu, 26 Jan 2023 06:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674712985
