Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A892F25
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 21:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653773699;
	h=To:Subject:From:Message-Id:Date;
	bh=4Ece+aveM7LYtitBBWN17BoBB3eTWrZ+ibMDolLhWwA=;
	b=DTu+a88IK3xnYDEzQgcBvWR/ckTatT8p29tox8yUW8mCOBsVSxb9uWzRunODbBZb
	fxT5ilHV7eubGhMGVHCkd3i314NE7znD6ixX35Qwipt8FG9r5o6ikquplvF64j/i/V7
	SyjSnSHUGc7X6jcN9hzetrpeHsxCwho01B+sJbwI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653773699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Ece+aveM7LYtitBBWN17BoBB3eTWrZ+ibMDolLhWwA=;
	b=LCTZCeMwyRCrNW3Brp3nbjxUEYILZw6rCd/fIP7hRO1IbKlhHyF8H/F3b/NhHRrc
	uQol7kfADT3jkgCCO0mqUEYRDQVBtMRYHzsH3tzqWDKzpoeHKYCHVukm3iVcmG5rJdl
	eumo9F57XKnTuSq+0GUqnIzQ+0j3l57hhIqw84bU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810c9808bd-560143bc-04ae-4563-b8dc-85fcd6f31a7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 281ded49729de844ea6d2717c2469b4b49ce55ea1f16005cd2b8dbef7f2cf70b
Date: Sat, 28 May 2022 21:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653773699
