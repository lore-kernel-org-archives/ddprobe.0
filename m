Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAA82585
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 17:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FB1C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 17:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677952625;
	bh=+ZvtsftspqOCQXhCUN/lRz9eKEWNYIZtwq6uFNO7c7M=;
	h=To:Subject:From:Date:From;
	b=WJi9pciImGGVKTzrJT6FbF4xBnVGWzWoyobBexS4hzcPFl3eedfBScKq6wf7xnThA
	 NbTzJIOuQqwQmwNQfnKa03/NvgSJPRQXGVCAgIt6+Q3VHqvklXP81iU9PzKErv61ge
	 NuGFo6iXRUNfV7F/vEa9gtSWSpfz0wW8O2hPIVzABM3TrjNEqRZVEEuin2Sq/LEKYc
	 Q8Y80XtFQKOS5OBiWjZmmAAXcCqWyy97ZPTycVeBoLLoCojv5PYaa+wY6BcKIAqfBx
	 4DBY+ScoogaUz5MeOJvbg+l30lhkxA6uBgh/eJkVdvwkoWwRBLA1ZlYGmFnFpCYMGz
	 BUHf3P8OIFg6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B877BC678D5
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 17:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167795262574.19857.16311130971247037973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63300b96a0b272552cccf405aca3ac3bed5096195377d463a89817add5a3db2
Date: Sat, 04 Mar 2023 17:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677952625
