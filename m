Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC732568
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EFC3C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666881654;
	bh=sHmZ4wmSAPrPerk7tA51hf3s4Z3J0bYaKYHc7OEdFis=;
	h=To:Subject:From:Date:From;
	b=SXMTqR1LWrETChjRA/ZwIb0cKOQD5TrU+6itN+V1HtkUhunYxVXEd2GUk6jCLzSjc
	 om/ocooM7bUE0FvI+ZdQ7oAuChqd+LPo7dYG+Ng/vOe7z5CxGcvfQhEbJHNYl2skjc
	 Ny1Or4RBrF/h4Y22/rtRS+5rXT529UsKhvs0iD1ctGk77h6zHbDbTzaHcA0RYk78VN
	 h0jmFXu+dUhg4eQzAt0Fm1I3s0wz09DjgxJamoDmWokLLpjmg5zoqyJM0mkEgGIFo5
	 QpyfNSNUOCe2gTgEiUr2dTfuyEJfl6bjq4vO+c14PjaY14gXQ6lBCAL/d7oKchFJku
	 ZajUYNIw1zIng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549BCFA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166688165433.25816.13207996424282293098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1366bf27b0a0ccf927899190aba5c95d6b928343b896a4927d216cea0ee7f9
Date: Thu, 27 Oct 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666881654
