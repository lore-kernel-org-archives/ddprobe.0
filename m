Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE3538B
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C820C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667287254;
	bh=IQhB1nxluxQXCisXIkXb24suZBuR3G6Gxt9xEn18ZGc=;
	h=To:Subject:From:Date:From;
	b=EOWqj0cmA1USlsAUxLinu4pODu6rC6Hf3SviP7EcbW9mYh8pydKo0aiegRPLvhRE2
	 ny9Hp5xDAvf0pxudfufE7IPKbAcMwR07kOeljn1/sjpo1hYRxKwnfdJQVP+Bv80oSm
	 mOUXPODnn+8C2RLcvq931hflgNIxs3hnFDqz+4z0RHKxPb4IinuztLhsUwFE5MHB+E
	 LX/EM5JQ89j3tNYppTYsmgCOOZGmDojL0RqXR+fqS+qYLng1ju29EYGBq9w2QzSv0M
	 GmyyqTineRvW7WuWbWsYwWWTEQmi0AdT0L+jC9zRKidK8gpkUEClNxbWtbEfJCr6OA
	 7rxA7wDLEx1jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509A0C433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166728725432.9207.16999075303874265953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37adb738f8a29f33cd9c192abae3d4fd9e990c69d9e750289a69ce82c8c8963
Date: Tue, 01 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667287254
