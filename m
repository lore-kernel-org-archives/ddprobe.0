Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3CFF28ED
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66C86C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662030653;
	bh=EeexNFCwDJpNERnysLhYN9cA8bn7TKuZAUFdQDD5lSk=;
	h=To:Subject:From:Date:From;
	b=I9FCDdoq1wSJV71YbCr+/4LSBoX0MDXVxZS4iGpUbcZWwOIdpf3lD/MDmORv+/9sZ
	 eXVaGWxHVAV0sXzCn1YjR0UOlEN0qxX6ymlaoXZMQjrXdZNKmLvY8pO8qWDH3Dwbf5
	 4wSGpmAuHSRIXqQFnA3lgyq6Q3R88diFWykHHX4Um5wg7jXBl9C4qQVBhujheLomem
	 W3UXufv7k0Px0mUISGx3jB18cvBArLhoRFa3L+Uv9TX2SII/HlO54w91wvDshhUa3g
	 hwxJji+V3Rhb2DwgtjgfVdjgLSqQjOxSTsaZ1kySSxRwaQPxeVDO3YYkrCCSGxGhUR
	 2ymopO4G1RZMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E71EECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166203065331.3902.14329951255738776223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4d4e4592c3d66e6dbffbbd33b321c8eff3ccba2aec9c6bceec9dcf2be5f7c53
Date: Thu, 01 Sep 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662030653
