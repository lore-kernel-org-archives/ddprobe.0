Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC9910F2
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 740EDC433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663719653;
	bh=ar7H8ypna2Pv8zv8dEyWElTeIA+sUs/NznvL7SIN7oI=;
	h=To:Subject:From:Date:From;
	b=oVRdrWSKlnO6+doNQDcSgfAtJ1FtO6FDkf4BlTJ46+++V5DgDxuN6fpGKkIVruN4S
	 fbFDFhtCYkDXWkY6hAeclTKHIiPdnsXtljHD1fwMUbViKSzIc8oIU6m00tt8/CwLOB
	 jYA2J6fN2XDah41RDWMTHd+8EjapucidlpDjCQBPepU3V8Ve5JWDSYBydEGPFKYl57
	 UJfrl4mZQ9GOAXesj6grj5znqB4VELRMTixfE11wfDgejT2rJzUvlldsZzhljN+KfV
	 GtigXwEzoHdLm7svVWdjZW4UFJ9X+mX0oyot+XlYUuJ3ziRztY1ClNnpd/RnouWIp9
	 BUqaMqoZodJ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A661C54EE9
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166371965336.21632.8262187674692525962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f17b05f55d2450c129b00edb1d91daf5b9b1b8d34a82d656dfc9c44203f69e5
Date: Wed, 21 Sep 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663719653
