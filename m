Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582147F8
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 06:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 000BAC433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 06:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684563546;
	bh=ZWjOBDyZq+HvaH0jCCNT9KLcDHbn9AhTWiYyQKifIKg=;
	h=To:Subject:From:Date:From;
	b=aHi37FKB/2m37kmQ1TR+yzPVIzHruLJrZY3RnVN2G5mU4yaSR3/+KXXYZpCDhWEWA
	 K8Nuz6jWMlp5w6+ho9J7+Nox/SpqkuNEVUfAoF+kTq2Vtof1vL/MO2mhRvK98ilE5S
	 +/hL+cDlCRWs+95COJPDLsRbTIfiaoOeEM6p6r6n9AdHmQAQfo1tn0wY5yh+avmEhF
	 HujFuc8herVvhLbD9rcrx+5LZbCxbHBdR8uSxUMHlncr17FuDA7AbBDBEaqaSLhxVJ
	 gdiDH+SV+sAF+pDZ22a/o6jWuN8CV7Wt/GVtqR2e00ytvoq5GK6t6qRjB+DTfINB/a
	 2ooq2wkbVMUPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6BCEC77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 06:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168456354582.11727.2954612254664764349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4bcae34abf47c5eb7547ac300f361046acb0f71f41e80f08fa1a2d3c591c32
Date: Sat, 20 May 2023 06:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684563545
