Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA0129A0
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657712212;
	h=To:Subject:From:Message-Id:Date;
	bh=0WAt6TIQw6QOYm9RNs2bUbtmAdxL7czDLZzzzxO3eO0=;
	b=cPAG3ERBAaDeHtj9DOYLBlzoGQa06o5Q9dcvow2a9WkwJAYbyikNf3FQtMjDoBN2
	7PLAqMuPdOp0GYXuMEHQYUe4tkIXUU5A3u4/YHb/eihtzq/TfF1SEUqwDoU3DzkDbks
	YcrWOAvkx4dJTZEiF+ae+pNLOwLeVNWQm3GpOss0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657712212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0WAt6TIQw6QOYm9RNs2bUbtmAdxL7czDLZzzzxO3eO0=;
	b=k8NBoqMZ9clCeCLTkFDzhywZ4vgF9ga52f6hcw3G3CeX9qwYxP/f5wKz3I7vEFet
	Ul9N1uADVovZ7ay7VchH5f/2LNxodkPLPxDIuMRlCQWAmLVUI4c8yShXcR81dFJxM2t
	8a9gyUieeKYYn0O2PJjQuARrXUpgWKcHGPLE7lh8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f758f947-94b4a0f1-a958-4de3-8499-aae4070822d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2956aef30c06b14963c31e6004b5d7ca93a2808b935f08014f3161ff64909af7
Date: Wed, 13 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657712212
