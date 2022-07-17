Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1952B7A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 14:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658068612;
	h=To:Subject:From:Message-Id:Date;
	bh=lfjMb0Q5mfJW+rvDFwVMaFk626/6a6jVJ7pHuirMgsA=;
	b=Cjq5/1c/LyTFAQFNnd4kB4GHmIxIexuIDOBPYsyy1livW+sRfIRKkTvEcEG3J0S5
	c5ZiWbhlRqwP8bSLJmuGSg5ckCXK6tqfuHtnVEaSpFZZechOK3cC55cy6U9Y3V67e8i
	igfdl75CdTVSQm/WalTJNe3KDYWM8Vr/deCioOXo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658068612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lfjMb0Q5mfJW+rvDFwVMaFk626/6a6jVJ7pHuirMgsA=;
	b=KO43v/4bnLeLmEnXW30jBnpvFtjBRruJTr2LJVx8aQ9iC1ub3SjQI9ICwvvQ7PRi
	csRYexWRL5QTsRauqVHlyVLUQ7MwiozREmiCpTrJ2moLK0pNPt+4GDyNxE1m0xz9ozn
	4K3la/LXO3DcWoKuC7ceX0drGzhvIrqwdrIFtk3w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820c97349d-451cf6aa-1525-4c68-bd54-f278a8697f54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdb32f09a8ed9db37ead87f4784b23f3aedf9bfaf144f82287231bf311e66638
Date: Sun, 17 Jul 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658068612
