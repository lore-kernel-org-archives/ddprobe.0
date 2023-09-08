Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484501FCA
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 12:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC39CC433C9
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 12:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694176448;
	bh=bfvzenPn397bFjoGn1Fb9lTRSm0R20UCTu8wLcLMacw=;
	h=To:Subject:From:Date:From;
	b=dPNLzDN7i8uWFx3pVJE7GxdD8nVpxJYJMwFZ3bhh7vZTt+oX1PkSpT+HYxKWwhTGh
	 ICNZFnI4J+aP4vIWWwkg1kEpYfYgBm0rGYT72zE2rDRqu5MGKGGkcb52RnIcHspdTN
	 RS3CIsdZaN8m7Jr6pYx4+hcv2kpq1uE97vlziio6KNcX17BHEMAXdpDc0a9ab4GjXr
	 q4v/70CDZ+dmnI9L00RdlpJTxhtcGqWqD0GCDRn1JzuNGyGA1HnJ3rObsbvOvKahg4
	 vLfp1aSSy+oKo8vFRgZ/+c9WdlrPrOSuJoF0B0fBnGMGa4pd1698UHOigU6LUY2xaj
	 l7SFuXbt08Q1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC478EE7FE5
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 12:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169417644869.1321.17921781636745484907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f66ee84999e16b707942ee4c78538761fdf1b78487c94e46b1cec91de34be65
Date: Fri, 08 Sep 2023 12:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694176448
