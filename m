Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50FD291D
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7473DC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662148253;
	bh=emgcwE/H8II0pzS2Rtb7YdXafU8ubMgoOgtaTjpW+Wg=;
	h=To:Subject:From:Date:From;
	b=QB/rPeBOahvXIpilnpKu0gGTYB6mCZ8bC6XwtTqnX3TbIl/rS8+EWc+yYz9RhYsRj
	 T/Qd+if8hF8Aj7cfc32ERq1miHDtz6Jf5E9x/ZNzkIK6jOUbdXej+JCUhq/6A8PL0K
	 sHDaNJus0DdKoeqEUuO6EzpDkF/LREkAQ155xHEKuQ8shjBoP50URG7HdzVF3WBv8V
	 ezuUAAdSIz0eutsi/hljeVxGSp7FY24OFK3TLxYUWPtMklUJjILtZ4poY7Qpzhhw4w
	 Y10iMH/remf0bbxCN9z9w4nRjSeUVwI7rsVxuiEF0Ypyq1XMpJDIpI4JOHurqMe3jg
	 aD9kEXDdzuNcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A35C6FA82
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166214825335.17033.6736860826030090115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1b5893ed9588f82e129ea72f8a0da6742d42446948ca00bdfebea82d16151e
Date: Fri, 02 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662148253
