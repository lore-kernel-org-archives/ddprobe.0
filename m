Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C027117E0
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B374C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668669054;
	bh=Lrb3XEDdWfFBjWKNKZF0sOMX5Zs+PSUBI0eSzRyvoKw=;
	h=To:Subject:From:Date:From;
	b=ogYaJKHYb+pfK0Ucos0QUPYO+uv0qbEYochXiCftvefS+GGzAKxZ50iOT+YO7EeaQ
	 IiyUU/zdRIWnc56WfvekPOAQOkewwWyeNIjOc7hfkVdriYpspbTCH4zNgmrebeOB8s
	 xUoxrepJtf4zmwdpfIoG4DFbEIlcngzXKQP7nIS00O9Yxv1Jd7Xgq1F2hCT4wYwmGB
	 3LAZECXx+lsNNIV8lEWWz9Sl084yE2Ki/8ONqEY0vipLfZtsDQA8yqqW8ji7PYchtn
	 Oy/ZlSd88QoNOgOkh4ROpMZt19IT1ankWOOofFXKHAzWJ7LnNR6JOgH6IE9EJjX+mH
	 vyaU5kUv0b2Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DEEC4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166866905433.20199.9410806475284466517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 316bb70a48e81461d02b101309434e906518ce738a6f08462c0a516f9276ea20
Date: Thu, 17 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668669054
