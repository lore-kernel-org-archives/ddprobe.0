Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B28DAAD
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 20:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDE99C433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 20:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678479306;
	bh=Opjs9UEBmjKJHqNZXuQtqduLAw0d79vfrFqkpUtQn1E=;
	h=To:Subject:From:Date:From;
	b=RZ9Km+dULd0Xd2VWd1P6QL6jOvGrhriM96dosMEH2xKSrer0V6X1QGvtDe/JpMeNJ
	 rrZaMsR14pi+9ftYeNixqRUrvMNGfyAYJzIzdRY6vnKSjh8PLW3CAtuqmrY4DJQM+0
	 UPRlHW0jouEuba3bF+lTN46PJ6Hu2K8tXeyZH43W8LaGLXegVLCWnlNCxzKD8nGNom
	 RUWlP7x9F+ZJj4kwaoQdKxzSGdt+EATvFaP/403NhWvsoO2LNP2zXj46TlFn6RoIQJ
	 ASquRlR0CoyjT9zjgNBcyMpido2cyM8AHCL/4/6xqFvM7aun1RXoUkY3xdH0BfPZM1
	 XspjrLXzY6hlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0978C74A4B
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 20:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167847930584.25584.9978639103359901943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab882c839243cfaa9fd3fe1a5794ab83c7fdc9e43970f2d0779d404f785fe96
Date: Fri, 10 Mar 2023 20:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678479305
