Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4C063E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 719B5C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670397054;
	bh=8/dPIdHZMHO9FzBslipj0ms2uvCQaapf9oUNiLuyOYc=;
	h=To:Subject:From:Date:From;
	b=BlGGaWFN+cmh5B6ob3qFflhv0pK+FabXQ0b7abgjj4vWGIacAvNIGi9YH2qVqhitG
	 XaQZA721dzfWJ3mql4v/EosTwpBu9FQZrkQSE5Z8ZqOnRYEBEotJx1/dVNF861xvrV
	 auCG5Yu7d/xMhwYPaNqKunl6NOKIza8kTBGI3+EE/eDeurDGEDEfr3yIfyw774t8p+
	 y6fPNZ6u42Z0eFth+Z7zSpf/LQBQkGG0PaSFX3hJShUK7jRny0AEnQI9dZg5sU+Ieh
	 QIcY/YUE7hzr5rsmWWwiSvmXcHiXYwzk8b2UTK8aep8LP5S8SOGEkxjfzYo05dayqp
	 /TN7twYDAG8hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A8B1C4708E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167039705436.26991.8786224975916651479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 790eae68dfd6ac6151f2b8d959ca250a08b576aa8fecc789ad2e34893cf93a8f
Date: Wed, 07 Dec 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670397054
