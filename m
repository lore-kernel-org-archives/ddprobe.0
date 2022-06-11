Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB1264F
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 03:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654916579;
	h=To:Subject:From:Message-Id:Date;
	bh=PBeDP4sc4uyNkYT/q5kXnORQOWbtblmM0E7tXcJczuI=;
	b=CSjx3G4K3WkMBhNbYPNGP+02z25c1ui977ivFaAylD7xFt4Z7wO+q0cvH37QThCc
	w2Dh5WqNCSL6+ugfMUSKN7QbUJEKYUyQ+a59bdTFI19xWqwRh+KkNFIk8QXSGOwbt5R
	ZU3gPaROpKi+Y1rWrOudkN/H+hQU8prQY59LpreI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654916579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PBeDP4sc4uyNkYT/q5kXnORQOWbtblmM0E7tXcJczuI=;
	b=E+Z5lF64VH3vTgHznqmRe67ZsILPxenlh1w4ws0Pkqf+cGY0OtuVMa+Om6w1Evs7
	niuhBJm/hQU0pvyy64qZyvG9YDo7gXWLKQAVszi7iqzjizpg3dsMVwqj9sAUW6uH7BL
	Van8FD1PkRWwnFj/V082RIC5869GOJSabUOX6rGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018150b6ffa1-667e642c-3d99-42e6-9654-c889a73291ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e8fc19c2f1ce7e2a1d758e0ab96a8804160e909330131e0b572d60f360d9ccf
Date: Sat, 11 Jun 2022 03:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654916579
