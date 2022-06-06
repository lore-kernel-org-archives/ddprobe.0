Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092377E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 08:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654502939;
	h=To:Subject:From:Message-Id:Date;
	bh=tceNAUxtgPiYAP3iW75NV9DHee5T9h80XPRFYS0lTgE=;
	b=cUDrG1Bg6GXz+0NcJt6HtwLsaI2nTf1MIgTFfFb/HbtRrYRj9eo5Q5Bs56JkQ++H
	toQJ7FQ/HwuQFmDZQb0uGGqPKl/64mCo+N5bI72bYgao91BabByvq/iGTtyrs9eypOD
	Sg0wzA3yVEE0JxL2vwWBycwNLKbKFyk6Y2bSG+Xc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654502939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tceNAUxtgPiYAP3iW75NV9DHee5T9h80XPRFYS0lTgE=;
	b=YneWaz/EYEfJlVD+F+z5ybo2yoN8IcssH84IOZpLndbJtyJhxmCTY2c25iR6Z+FC
	FbQsFoqfWlRrLytUKbTy7z93N+U07w2q91xb36OFvjvRu6aemOcAE1a/+rVkOjHj1w4
	lY/CDdqlK58oCWPhrVpbMnUhf7t1IHuTJVp+6B4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181380f5a84-f53c7b62-dfec-4a20-a693-5aaef588f670-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e54db3ba369d8527666504c4b4994ebb06ad64ec7cb3850e745cd5487051d764
Date: Mon, 6 Jun 2022 08:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654502939
