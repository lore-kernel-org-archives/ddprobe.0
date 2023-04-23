Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF5220E1
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 14:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC42C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 14:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682259065;
	bh=QB0AjBDo+0hoFD/0prLFcrDzfP/RPQF1V9mAQNqyCuw=;
	h=To:Subject:From:Date:From;
	b=CVUoV68iZK5J+M5rM8lKEifYl8ALYkedGnYObfsoBLSwqFuYiXspxkbU9jTSmi9rw
	 PrbZpvoNo+3MmtE5twnaDMRGuqtpYEyVtOETfhNPHplNsd/I6rENmDQQkaetwmrM45
	 PMweQ9OjAJ6H4doVW+4BlVmImrZsYPVUIU3OcUA6K33tP1/7dPji5j4wvUUPag2tQ5
	 CR+WeT+0jNmmbnHZt2sGw5vEwSjZlqIjWxLrSCqKEaDe9Z832FSdEYJ0RVV6i8jkRg
	 Jhuhw+kL8hL6nl/jqpBHyYbqw0iujkOdwJHZQnJMqqHLVQpmQdU93u1p0qWutFf+kp
	 THgOujx5JcgHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78EFC77B60
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 14:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168225906573.2246.6176757235069144815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1bf051ab7c1c7153c732b646d2f5029ad69c5913fe687f349f15ba0ceda561
Date: Sun, 23 Apr 2023 14:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682259065
