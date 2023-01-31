Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4B8A94F
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 21:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AF16C433D2
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 21:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675201446;
	bh=fdmuKmyTQXz1QeUEoKGLCR4bJUr9nVVm1SlwtzewSsU=;
	h=To:Subject:From:Date:From;
	b=CcAoVrVDkI5MAeYS8+VT0tablHc1lXfx7Ke3XxCED5RrxKHVS+oG5QW9K6fDsiFL0
	 9ZGzq/vWfLKZVuz+yN0uamYhy8JRNHJkoBEcoMku4eRdPAwNfzsWmfhOuRqasYp1zp
	 ApKqOw/E5ZhUtoZLpWGeWu71yaX6mds8O+LQxk/kOHdwRwitaxlZLRDRJeJV/M9iuz
	 8DOfdmkgcAohaZGpsbsxqgiOCRHK6PommT9UUYpbfqdRTqjffbCPQ+EK8TTqI5Gw7e
	 /ozz+GFt5BWLBtnn5t/tQ9aohrt+RWgIFK89NgieuFJtZb3GDIHCcoi34+74H9dFUn
	 Rcn1kj5huZVMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1DF1C38142
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 21:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167520144584.1538.17201371581697130094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68e64a7583d5e6abf89f4106b5f3d049e45b574ce509dcdc2b1548821349b37c
Date: Tue, 31 Jan 2023 21:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675201445
