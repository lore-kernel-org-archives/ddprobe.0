Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1DBA954
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 23:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1195C433D2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 23:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680565025;
	bh=G1t661PJAWwEiX7RzoH++8QeYQtozBMxiGePlPxeZvU=;
	h=To:Subject:From:Date:From;
	b=KxJ+JcWnKiU5nGuUhNFxDYRR/AoRXriaLoPNWI/qXfZhUpyjeiHQ1ID73hmpA0Rkk
	 qGBYRZhiD8lAo4mSqFV8GaPWEytSStChHOCP5kKlBbeq3TJhzc2UX+tpbu7xKxDsKA
	 RAeEWttTKVi3LjG1LrxUsmi2yqmxIWvW3nvdLc6NxHzx7oG3OzmChsNmdIfu/oQZin
	 v1RQUTIdM2/QaSI5j+t5V3B3++KeYnw3QNAc3IzuWiIeYu6HlWdA4xNpd5mR+ovcjK
	 3mWS2J0MZp8uqTnpan+J5r+8cMBiw5KmExdz+han1En8ZBtYPp7sKhwK5caLutI3Vb
	 CnujsXVUUMq8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1797C76196
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 23:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168056502578.11414.585134909708152471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea2aa3168be717ab292893c1c71f28ad4381048c18b26a7cae571f8831e7a92
Date: Mon, 03 Apr 2023 23:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680565025
