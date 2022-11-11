Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B31EC652
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A993C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668154254;
	bh=5FYkZV/6TRshpqxJ1VmAP0wibbOaLjkwoBqL3bJBr5E=;
	h=To:Subject:From:Date:From;
	b=PAipfpyYVnWA897UMED75DxgaH5q5KZLdV2s9csCO2Mimh2WcaNhp3/PZjwZaBThT
	 QI3Gyu9y/2qZCrzlEWc68Ton7SL2j09N9+K9ba7O8x/zSkwFdDe1yCZogBFRMF3ois
	 3JFuGJZj1Yeu5jXEHhBpU6I3TRy6d/3vftIZAwfEabr40b+LsG0D8TqXGs7nOraCgB
	 IIs0CGb35j8XpJRFIPEZ5hS4BrtlXgT8sExNCjMHWsVV5PLypg8lZJ2vI30zmJiB1v
	 l5yTuhoxXHi+IQ+mzO6DXpshhIt9bMfxf7QvONPVuPdQgFEibFYHG0BNH1eO0QtOl+
	 bBU1DrYDHfsRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52AB7C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166815425433.11784.4178254400632640725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd02d31227a89571050a655d860277f2bb92281d45a83071b62a022e0fb313bf
Date: Fri, 11 Nov 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668154254
