Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E4513D6F
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645094785;
	h=To:Subject:From:Message-Id:Date;
	bh=Py18mzZmDACkSg2BxqlOUHwDjzQtQqTtxyQVJ71kLIs=;
	b=Zz+89fv+f7FEYBJNZhZ0tLgY1uizhwlwKFAl+DfyXWcrTsUz6MYrBlr2ivd21hWi
	enx0aT7G+b9QZubTEsGDKZh7uItBTZmVC9L/+ZRB+vkq6hJC2bZzU8EmJHLT/wTBNby
	GBE9Y7X+tKTnqHfGfsQGFlMIKIhV/pE26lcbKnmw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645094785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Py18mzZmDACkSg2BxqlOUHwDjzQtQqTtxyQVJ71kLIs=;
	b=bWFZlxWBId/KCK+MhSaxmvEMfhJPKppYMUOXD18JuBnOpdr8Z1UIjHEQsOx+Hxcp
	NzqxBG4b/aA7lV8Vdaj0mfzwDTMXnTkpcFh0M2fER7LNX/D54ssDDynCubqM+ayfF1V
	9aauLV8o6zgq/lAMS/tzGXUNQckAWto5Ha1AWYzA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f074a4edc-5b1f7484-3739-4f92-a83f-18184a3784dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fecc6e8a77d3fd38da325215a2dd0a1abbdf0bf241c11d33ce1067328a209d64
Date: Thu, 17 Feb 2022 10:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645094784
