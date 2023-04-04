Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E5B33DA
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 09:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD21BC433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 09:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680602225;
	bh=S+61D2O8wyHSSelJN8T+yaRItHKuTHK7+X3UVfkZyEU=;
	h=To:Subject:From:Date:From;
	b=uOasTlviSbNTaVokEljgQmfbZC2H1sk514ayvbEu5Xrl9md9bfQ/37FhDVuc1mQ6W
	 fN+/7S9/sigHqqIOOUdSagD4iWHINr8QaQSvMac45+7FMs5K3fl5/8skLrjBlC9RlK
	 k6NLfUxjUafdb/FRyn/oTGEwLm5quTl1JqDjtQeq5VU6hiJa/cKFWn0cHKsCnOn2tW
	 8/OjF4PXmqP92H5FCo137zqhojIUlpQSs5TInfzFsTrWKuFZrioqTJ9qvDYtIriTPf
	 Pkj1thRBTECUrm3Zw0inMRT7Et2E3w1YwZGlqP6VYrE8NGXMmCq5LwmTbpD/+w7hHO
	 Zz3pw1lnVTfmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F09C761A6
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 09:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168060222578.7590.12035939453559799856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f9d9c339b37c966a92df63f07176e922302691f3b3489d6fa8b1210373b200
Date: Tue, 04 Apr 2023 09:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680602225
