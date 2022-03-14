Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9201B7A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 09:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647248785;
	h=To:Subject:From:Message-Id:Date;
	bh=m9JmlyM62orue0dwhnVrrGTwyzoRdTFJpwdIhG1r+PM=;
	b=VwVuA04NPFx3tMtB096ZMmooN6IUpZ8t1NYx3v0Gg+TeEJfyxQiFoMkNBUJk4fcv
	/AJnPbIGHn+WFi6rNWuv9JKLVqJhkNVg+6TulVD5JwCT3iJqVrKhcn9BirKiX99cbZz
	WZTwhg1Z+Xll+egks7s0uG/omSYvRUF+S3Bfi98g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647248785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m9JmlyM62orue0dwhnVrrGTwyzoRdTFJpwdIhG1r+PM=;
	b=dWxQywh1gEQ0xJCHvdz767r2O2WmuCGa3cxCfshFsUCLQeq6WqsNBYrkirzvJE2T
	csLCoS96hhurkAcvq24x4w5oQvwQD72n6iJDavRdhmdsU1X/7LULPDN3bb2+UporHzQ
	imH17NKmOmmcaKxyL1MgftGoyC73bEuoN9XFR3uw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f87adbd51-5a5e4247-328f-407a-8c92-fb7b0783da58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fa2d4367b888789b263fc7bc7454ae77ba5af5492408d9b1463c5fc1f8fde2c
Date: Mon, 14 Mar 2022 09:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647248784
