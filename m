Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1F23207
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FDBBC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670326854;
	bh=HY0KKdynZgN3XLxiGVfaQXy4HYC+hrH54fiUZwz5Pl0=;
	h=To:Subject:From:Date:From;
	b=Ge+jLZAnzvhRhlSn2vO1gVVXG7Dr7lMM1iO1dj7vxYFjtFltURa+fJDtvB7ySfn9v
	 7jpeRus3WlmW4mKXgSUWX9s2q7uY9gN17i+j7vwiw5H+ZxMxdu1WCCW8+pJhRDC/P0
	 mVEN853uY7ty1AgmJ8I0PFQGGkTCbJOthkWPqjHjH32C65pbViqVCZdZEeH6F13XxD
	 IGuw4oW81tJ/DUtzsVIwEepgFFLxiLgyHYNk4+quDUFUtIosLyR/voFbDsnW6fMT3I
	 b5lgSnB4Q56KEP1I3gVBXcDhAtMNfb4rAsqz+kimvh1GOrOCDgspO5ALYbtXWlM3pz
	 VTUk3I1NaI2aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58FC7C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167032685435.23468.17273792005047080097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2337eee7120328fdab91f4468e9d67290db6c8423d2d6c739c7234b3ecb25802
Date: Tue, 06 Dec 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670326854
