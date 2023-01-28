Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B9F3C0B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 10:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A11C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 10:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674900785;
	bh=vTGuIlCvetRE7Bu3WhBLQfY8Z9yeZcobcKUXFqfyGNw=;
	h=To:Subject:From:Date:From;
	b=kf1Npyt/2oaty61BFZWgB/U3C/GREyOQakZQra9V/wAumFHfo9VjMHbbFltV+j8q+
	 jsFxor+A7MQrwBhWSsC+Xj78UwqhmhyOUyyD2wpPSJnHruUNcauWRSZSO1JO/uuZAC
	 gSzlgzqq1FPESy2DvD7VyC2Ba2B071y7rB2RexQpPB/b0jCXK/BNs2jaUGwa9PIlHG
	 U9N2y4cAScZR8eHY/qT93GRHnQJQAANGQRClj5G/zSfSp2VeZAqkWGdeA9r1MInKEu
	 A2kwyZUhH18tldIFZ2AOt/fwcKEfsDGrlWLk+FJFyOyaWNPWk00T29GRG1CK4wGFYP
	 3d6IjtxFcrSEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDEC7C27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 10:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167490078577.10416.17751884524700743556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9f13db1ecd5602a3f1e189774f68d46bd5bf89831685c2638062fe82ef3b5f
Date: Sat, 28 Jan 2023 10:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674900785
