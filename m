Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DA22F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 714D9C433D7
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669592454;
	bh=f0m0DOWs0GBQZMtNm4aATfpBWV9PzydgXi+ChIpHeJU=;
	h=To:Subject:From:Date:From;
	b=E2qlAk3851SMlGXjyyBO3pzL63Fz62WanAZNaFi0WN0aBBhiz9xBqzXyOwDLAEKSc
	 XmkTQ+UNWtI3V4THZUW/Md3vmM1cLsRtcrY2OHqL0FKy86UUVba+0ZTBRU8w+ao/xD
	 KM3MwflQDvrkYIbt0wocs7WxsuRjU3KJwuFBkmBoOT4yjFnN9OfDe60FEKVJjlMU1d
	 1EcxpR4ReCUZ9pY1QQ8368eS3Jzxe+KUXJWdkJp+lLAt8sxvyODAUK1cBMbnIvnAOE
	 oj95eycwLL04tBzG29Z/MiKNq58OVx4RRIER3LaXvypX2vshnVDNzLpUpl2rruQBNP
	 6Abj0BVXo4CBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B52C46467
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166959245432.15773.8521132603312319309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3959a7250b108a4939c085437bef6077875d9406e42c0edf87350c0f8e36ff91
Date: Sun, 27 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669592454
