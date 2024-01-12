Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086C14A21
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqnHKH7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 869C3C433C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705028296;
	bh=xfUX4HpGYqUYn59qJFOU5tXesZRubyuXlz08JNFcc0c=;
	h=To:Subject:From:Date:From;
	b=NqnHKH7F81Q/piUwK9h/9KZw04q2b2a7BvKsflFBBJA48dSkYMvWWnpTqJA4XWOxw
	 cwgAKjMu+Y3gY7k9QAfpbKCsFFEs+V3aS/K7AHejBkNcnfcD6D/h2w1amKkiWOtGwY
	 C1HTtha8HErDlRnVaYqKpE+7+Ib7DxQKsVBvnbpjnxo00NavQBwymnxGadiJenSnBI
	 9mTvYbYeeSy1Q6/6jC5hx93LQxt6ZlT08zD+9ybDtdbUkjQR5CPGZf37ia25sihWkq
	 u3E9XuLAptzw8csAf0atzGqw+15H158Z8DFvAacuTr5gcV+uEZhSK5ha1PLeiIdYbf
	 5wBiiJnM79v1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66193C47077
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170502829640.21556.6023458005588901017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 947cef1e673207daa20f364be122e5a9791bab687ce639261344a2bdf48d556b
Date: Fri, 12 Jan 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705028296
