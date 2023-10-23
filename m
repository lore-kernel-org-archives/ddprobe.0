Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25072637
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRmwgO+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84C5DC433C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698029296;
	bh=5vSZapPMYZggyXysVk76rZeLJvYn+ZwdraMZlI46J/U=;
	h=To:Subject:From:Date:From;
	b=kRmwgO+aAe5ipzfCdzedDZWh0VTPeB8em/eY//3t/BTb8CE2BPo8nEKUHiIpxkual
	 iJNvHfnu1I4j8uHjY5m2YFuTWPQykeQAjvgcc4tunmPgplEIKdUP51RKvozSOEWXsZ
	 +/5j2kDolSYNZkr/Onf7b/OthQk4pgq0N6EiCdKA8aon8llTkXaaHrv6sA8e+0ZOvC
	 s0zFNzmB8gP6VUijeKSXE3uI//n/sbLGOKHtYJa4HOyl0RAt7SQJ94jyB++ldEIhmp
	 glOOc0zCJSCxOv9/VuYW3mGjECjE8y+rBkTlHzoconvk1hMmsCoQHv6Z22fs/GTlyZ
	 YE/YvPheQAsRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6492FCDB474
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169802929640.29831.1445270029446923088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05755033dad05ec808a365be2253edaaebb8e9abc521f1f62715ea3ec57e8356
Date: Mon, 23 Oct 2023 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698029296
