Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B66F33CD
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660328452;
	h=To:Subject:From:Message-Id:Date;
	bh=S9gdsZ2tk6Kyp4ujWMBCBGX45DvdLfG1Pvq2dPu+j1w=;
	b=i7iGTWzZKiOt8me1r13kEm98teAm9mUSJfzNrM+nICVT5t4D254QFrVEk4tGW4+m
	D1LjyC92aL2AL5xfU3ZcLtXM3VHk6jKf4XwEXo7ReIImTx5TCPS2dlloK7edGeu0YsT
	XHamOw7QIen4TzhQxu7bDY6tdIRE3gdsT4k/IU0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660328452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S9gdsZ2tk6Kyp4ujWMBCBGX45DvdLfG1Pvq2dPu+j1w=;
	b=KckawFz+dXXi9DA78zG5A2kbFhzeOLta7TXWJvoBjMMeLfMaTN+vkfwG8lpZxHEN
	xxHkhv2qT0kht70e7bAJuL/8Zv6gVP4IcEJeXl/8TUaH98KEACLsTEeB20RcSo//y25
	TnRnCnTUDCS+tLIFCT/TifhmwEu0z/QtMfVBvAPE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829349a1e0-f75a7468-da2f-4c7b-a8a3-30e6b3172116-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccab31831893a8b8987af1576065e14574557e42990a295a1a2ec3728f5c5456
Date: Fri, 12 Aug 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660328452
