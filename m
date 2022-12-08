Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF99E657
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7235DC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670484654;
	bh=JAEXtFbtBzXBM/Qclnn0HbmDVnyfapEbY73ri90ya4Q=;
	h=To:Subject:From:Date:From;
	b=Odr4ZEW4faRJ3bWjdKTFCbglgck924grY/m+XX1sLFeHiIXikwSN/DOq0j9YJBSUb
	 d63GmQf8zIPhrCZiJAndgI4UyghbofmPw4YLmG+tEVbOhcMxTO56oFk9Ra67moFECK
	 RONmdru/t7XstnvlSv1pkY6K3Ide3uyQq7UjgHQWv8k7SNJ0otjzM1Lu+ybK/2K8g/
	 pdpd8j1osuHX0ptzAB8V8CWM46y7AaiVtEbjTsFqH1yr9YetV8FRw6a0JDkCkipjKz
	 WQbcQmmJUSlregCqhT5f8LDcyfkOCKK8AuXGK9rJXdQ84ABMGUTgByRGmiFO84rT9A
	 MQOqOCm3Ndo5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C04C3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167048465434.4584.3519887577563392508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0842ee6e5be7cdcf28e770918e5b95cbb3dbb306bfa8139f01c1df4c231fa7
Date: Thu, 08 Dec 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670484654
