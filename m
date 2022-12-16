Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB3EC8836
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D625C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671204087;
	bh=vzBh1wN0TwcynpQZSLBv7prlgon6HMU0HkvlQ2EDa0s=;
	h=To:Subject:From:Date:From;
	b=WdAvNo07Pp8+eCj6b2QMgXvlHRJGcLTsdOrL6cZyLBXzyt9gQNzA8KQBRYFqWacSv
	 TwCvOkTK6DYnaFJdKDEV/iXH5XJWC2oIfE7+vZ2XdZv1xjYAensHfgRdGhpjvwZiMN
	 LjmtOrL3S0faSY3R1dKo+mAjY4XT5JHW3HeDE3qoPnNHhzlMgmGU1kwiImylCGaTf6
	 ySQlNP0uJP0zpSx96w6i/uNCxQYezBIFtLFAqlbjvrvi2wk3xittvfTgRFpBjWlUI/
	 v3U6Sf7S/EQ6/44Cvc/odyqYyARa6wg8Afi3mONCRAaluZsEedUePHOXkd9r2BsINn
	 tbBrVa875ou5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE36C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167120408743.21084.11285356078883078134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3412af3eecf24d0721563ca826f420f234555d5d13879e97138c1ed32861e215
Date: Fri, 16 Dec 2022 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671204087
