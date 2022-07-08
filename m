Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24044635
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 03:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657251412;
	h=To:Subject:From:Message-Id:Date;
	bh=ySdU9wjrpJISAbue4Pko7MTZ1KGuV4AYJ7d51Zbu76E=;
	b=AzRJmzkkBLbrbsKFQOoyst2jyrAhjPS935qeLij6HoQxRI8SlV0vCE+UxCIQBEkU
	BUSGdWSc7aIKf3UajgJTcwv82CEPBqJ60aMDJSN6LiLP2ygKanR3w5X5euC9XXluEoR
	ZL0U6V2AB94pH4LfxJW3a2HOqevA2zR363KtnKq0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657251412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ySdU9wjrpJISAbue4Pko7MTZ1KGuV4AYJ7d51Zbu76E=;
	b=kmz2TH5OVSXYOcvX5cVbLyChoewuS1p0UL1E9H7LClE30VLGwkOyQ5wvtdsUsLRM
	dEu7VCY6cvoYQzkeq4VGbDuDGqYJdE3yevF7Vlp2yTfKwcoJ4Ut1/nQDC8Ll/Mp5vF4
	NZhJcfMoWTR6Ox3e9IVhmOsLXqwTLK5/eN6bh3XY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dbe1b930-260f2e62-4c3d-4a87-a755-17c212cc6054-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70996922b0c6efabfd22eca93082642442836ca693c86fba6425e5657d6d06ae
Date: Fri, 8 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657251412
