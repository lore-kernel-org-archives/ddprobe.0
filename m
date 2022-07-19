Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD1810FA
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658210212;
	h=To:Subject:From:Message-Id:Date;
	bh=zQl5pueVTNJrivqZiiR/lZklALYziOe7GXDJdqXCVtU=;
	b=h2KsSx6tAEC9mb3aJTxcqxR5Yi0qxLbp+dpdoBHNHTmN0xP6U/fBcy0MiAAyqHoz
	ccbSxY+cRkinn+bHDcARf1jM3F9c1w4RmyUBTbNRY+WD+8AzvzU/Q+0xNmeSWb1YfJy
	fokhfcqVNEVcKUCl5JvJRZmrX5x3SNHjKF2N/EMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658210212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zQl5pueVTNJrivqZiiR/lZklALYziOe7GXDJdqXCVtU=;
	b=Wa2OQbSVO2+QWfAA7tUShv6LjUk12uDIANOknVB7k7q/4x3DhlNFXREuGVydrOtL
	0DuBLEbadRBZs1aEH2BHOd9Fu/t0hGIUQpjKdMFcXNnwd451uQS+M3HryqRx74kGW/g
	ST58caRSH1+7QrO+hryyH2l/YmylB66CtzJOBzXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821507d9d5-980d898a-e175-4dc3-803a-a9aac772cdd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a3d0ade431cb44c26ef5583b1ba3a1adf6192da875b0815ad01a15e1e28fd6a
Date: Tue, 19 Jul 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658210212
