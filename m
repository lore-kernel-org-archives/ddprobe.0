Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02D0623
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 00:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652661059;
	h=To:Subject:From:Message-Id:Date;
	bh=IEQ3lokLXj4oQj1c7mBqJHTCbISizX6L38/eKFhVuXw=;
	b=VQWFuz9tnlZO2PINR9kLwr2GNmBiIn75kT2rB051O1VZ7GYTVXB5MvM2GbaXWYmD
	HlUn/g+5fEHYaVD5D9mDyx44//iapo3Ywp2JZz0dKdF9JfTogrTy4BBABUOsi2nd0Xk
	/UNYZQwKWotLMP173tDRgOlH51BRe5/jwTScn1kA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652661059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IEQ3lokLXj4oQj1c7mBqJHTCbISizX6L38/eKFhVuXw=;
	b=ialpAvn9nN21NGxbYsDrjffS4kuZK5JgwMIQsU+rGNGO8J40Rxtb5adH027bBx+H
	WuJZ1uIB1GwbQccsD9gOkiCcfb63mK785zzw+NMEyZlsuoWPuABwYa5blJDpeQJ32cS
	nl/hmQ+ZYLuXq1BNT1rrKN+jj2rYonBeVIzyJl5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ca467ec7-a8a7c5ff-1e78-4cd4-9efc-bd74e59215da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c880bf8a302b6bf60c119a053ba4b4536420cb3fdf025eb91ab5e0cb2811103
Date: Mon, 16 May 2022 00:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652661059
