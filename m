Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0571846B0
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 16:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655224979;
	h=To:Subject:From:Message-Id:Date;
	bh=lRYxnIyhyMusaPkqO9xwo0ynvz1bbuVT/G/XVwHxtSQ=;
	b=JimenQW2E9s3+W2bV6MUMsFvCOMV3KF73bX+h6ZVCOoNwHN/IS2OhleJCm4m7axD
	nmYxiWUfPQDcWatMkf+myXcfdxfFsrNoyr5vtdafYZsH8hg9gBGC4/UsFCmq1KJkKLf
	A8zFc/xVLj1JHq9y4QRQyZdxrARb/IXZtT1ssAaI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655224979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lRYxnIyhyMusaPkqO9xwo0ynvz1bbuVT/G/XVwHxtSQ=;
	b=Z7gUOAiqK0cOECxWMPAeYo58A0FADa2BR1ngCzuWbtg+4utrUo2JEzGYgFs/I3xn
	ZLP2EG4Tk3ZsASQ3dml6MWN24hqCB+ecGs1l+zmXcfkkMEBJrG79D+sRNUnqa7Xzy7y
	hMUgzcn+lhM7a/y87nkKGC3+Q77bCP/nePCc6AiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816318cf65-04c4730c-4557-4ba0-987e-98e122ca8620-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d81299dcea44904252d3272422fb5edf9a38396f9e0f57cb0c510b84406741c
Date: Tue, 14 Jun 2022 16:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655224979
