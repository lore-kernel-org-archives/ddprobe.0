Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C107E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660377652;
	h=To:Subject:From:Message-Id:Date;
	bh=oWrhljEiI5sHHMtc/M9BgCXFCmpw6gn0n7oBAwbiUi8=;
	b=i20ZkgL3cm4IWw0PKydl+lYU4Ia2FUwlUBcIZpcjW0Ih6d+HL7VeTeDZahk921l/
	1c8Z3kV2b0wYnNUAvYRBSeKfJLiQa2DOnch02mBwjN63wHPuF0/HIQFs1jsyqEjlCJj
	38N32cspmmhHRk/LR/9gacy5+k8KJMRS2SCAdDMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660377652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oWrhljEiI5sHHMtc/M9BgCXFCmpw6gn0n7oBAwbiUi8=;
	b=UMYY/MW+P7WHXxZ1JPd/z3AjDwz0w0YJiRT2I319HuxPpcINJ2ncylFw8rxJZTV8
	bfpdlsSNsZu48x/DWTLSKiWkyQk4OmFwGEVY+NBT4GASWc/E0C4Tvun6gv0JpnR2yTO
	W7fVYF9TUaX/VmOYjwcuQMRsl6nrYIdXEgjP6hT0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018296385d24-f7639a20-2e93-435f-b16c-4d2047d1f92e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35afbadbf1209edeb6971355dbeb3e227e5243c5663f77fb15745d8a87a99b74
Date: Sat, 13 Aug 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660377652
