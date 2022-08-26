Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D4023A5
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 05:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AD8DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 05:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661493052;
	bh=xgHDKoDN2aJH7/SP6HtSrc0QmlOhwiXIwMd3vsbpzLg=;
	h=To:Subject:From:Date:From;
	b=ZPO2L7U9gDAAmCgvhklJ7zyZPmrePwNzW1vPiFfA4/a+csWB0wr6i9l7SXCZIUZl1
	 bmuAVCqRGcRN82PpJsEl1cMo8+5vRhT8DgdwZJNOnQd8e6XB+SKL/kh1hVIEWbna91
	 wtl/VgT4d3qqnb2uiOrmIdVRIeiknpUpQ9siijaEDcR6gcBga5+/2kf/tuI5yKjayI
	 GkMdi8tHp2dbdubTxXPcXXdwjGI+j7Hbk1O253RiCoUyi7EuqfHNJ4VTsx8lUtF2M1
	 P60iz/fYUMzerthgo/I5lj9OGDSZgIDg0abIC25wwqAF0gv9Ypo2jz7tyNxAThyd1G
	 Gd0gp8f4FgZNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51145ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 05:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166149305232.9416.5581999106980781415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b75ab750e051d62d70665c74d8a66acbf53ff748f0e6885cfe8b58e571a0150
Date: Fri, 26 Aug 2022 05:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661493052
