Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662A78C16
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 16:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B0FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 16:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687538588;
	bh=T5si1ysd1uY2FTDa5XrpwKjBtQs7ZJ53poPqrNqUvLw=;
	h=To:Subject:From:Date:From;
	b=Ph+XAGXarO2M9DEZ/pap8vIbeYMsS+5uDaYE/UVT8QpXaZhbctiMlF8HQJ6YjnFGa
	 v9YpueToFTS0433rF8mCVMsQTjDh4q1cS1mNpl/R+Q38SBvU02BFeHCNcmfPtAwc9X
	 By7AFD2wsl/FxZl/faNFKAfno0ksBhY3g5lrBBTBbdU9qNXR8DTPF9otLWEtt6gcRE
	 QbKgv3EbFA+IQFf/ZKngIhykPYjW28YfZZfDFL3oNm96olJr2FpVXfciSWbG+SWBhc
	 +g6/YBxYykm3a1bF0lB8O+lLyss94e3wEPBTgCYnjB2G6QvPndy6EnhEQZnW3LJDbn
	 LSkZFZ9z26+RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8476C0015E
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 16:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168753858874.1793.1021894154250803845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b0eb962f9c65be3e1a3e2e7427ee4a64322e83aa33a73ae2edd4faed9443fb9
Date: Fri, 23 Jun 2023 16:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687538588
