Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F79DC959
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 20:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED207C433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 20:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679602806;
	bh=pE511Njvd5ZvCq4Ai+EO+/Bx9Bh8o0pQ9bsRqICL6jU=;
	h=To:Subject:From:Date:From;
	b=unm25R6dPAqOaSZNVVtXKjiQspX3mIG62Iw8JvUe3o6JCmTQJ6djIBLu41k6HOTBH
	 kHwIYBK1znqgpcndKPauB2A2h/R0PCuMK1nRdfzRsryLrgj3ms7OxoS0XyzmBf0qGq
	 h6JZU9eDqv2aKPUr+TCpzsbaBWClGB8vSZ45e88ynh68ILs2cX6c2cZqrKUf5xCVzX
	 /bp1vw2OtfgfP6YpjUlVg7BQukPvZzEceVDE1KTrBN2IN5dd+0eMn+oDBeag/IvLxE
	 GlgHHbX24Cy2TEBVR9lXOKp95CVygMtOM9YLdWWEANB0eQCwjYiG0vK46iTJX9GXKj
	 ExfHs9UIHWJqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6FAFC74A5B
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 20:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167960280580.3545.1776250459139431120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ede4ce085897a216568404c27ca01b418141ed4fb426f734db63b38bab4278d
Date: Thu, 23 Mar 2023 20:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679602805
