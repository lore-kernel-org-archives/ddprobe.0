Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6125CEA0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 09:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8021C433D2
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 09:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685783885;
	bh=YjCfjDcnbFeqFp0cAJsGFtc1qhkj2aeK3qWm9WafrEA=;
	h=To:Subject:From:Date:From;
	b=OEIcgVkOH+5ifkg5Tp7kq4TYt8tYlE3SCXFQUcfXLt+tHzhBxdau0lxDKLRVz4z5c
	 xDWHDmm887cOWI4hVID3mBdtDlI+132y/ZYDP4Z+JfycZI1ZokKqsntrKrrpiCkDyY
	 78Qee3IRitqKVvvtms439DswHc/p4PjV4QCZb1BVJqyEf48sJqchRZiWK44TW04DEc
	 nUx94dF8IuKGvuIRijCVy1Sd/Ttf5ukIkzh5Q498BjNuTXLNRhBkclIMgwnRWCZRyu
	 HVYZlxDuzhAGDPxJaUwW+NQZK+wIeGa+48d7MiXs6IvdFdOj0yhNXdUYENiQoiDGmX
	 0zWnS0NpQpdow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7329C77B7A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 09:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168578388574.12678.13126050097733206863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c95f53f365dd1e8fd7b352b75eb80facb1ac8a15a42c2c313118ff35358040d
Date: Sat, 03 Jun 2023 09:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685783885
