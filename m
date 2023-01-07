Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14611842
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92697C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673082087;
	bh=GTg80FjPvTk0b9GWy/0AN+fqXnFDjEzHRI0HFK0cjrw=;
	h=To:Subject:From:Date:From;
	b=RUllrzDd+YGpCp/w119dLw49pbHD83vJTrf1OO9/SMeTRdpexl1sSDmbcu85JSxsE
	 3KAE3pFrHJjv7ABvOx/il/+7Ope1hl7Ddmm755qF3b3O4rBCL+RC4sehBd98ZW5jhp
	 OBORvtZ4OO/kCl+E6JxCX4OhYiWxdZX1BxJOViO7P6Ysrjd4Q7fVMJgcnPD0aNc0Zf
	 NTGxN1xHxFohpnRCamHAm+NPdHXg5upSlS8f7oNeAabVlfScV0xpbfrdtjAzIstqu3
	 OE9HJB/pVwoUUYaMd/ip/HMO1dDlVu3GRBg0xicLbSE9QorZgJ0vStdC5qWKjpYhf6
	 uWAH946TKoAng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F2B0C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167308208740.11240.18438126764463676424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57fb5f943be302d83eb9ecdfa1215784e281c393a4ee0e8eff45ae8a38a881c5
Date: Sat, 07 Jan 2023 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673082087
