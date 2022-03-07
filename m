Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B08238C9
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646639784;
	h=To:Subject:From:Message-Id:Date;
	bh=AqkD0a1sfpTK23haq3I0UTRjotQuhnanHaOlf2RrZI4=;
	b=i39iKbbDJU/R7GNhSzidg774/iRXm11dcaBD95qkpfyUPhgFpQGFTwueBU8G9ti1
	4b1epZBQHZj7bNDTt/AwewjH80wUM5rqHB+JRkriGrIjfqBA3i5R361+irdbYP776ST
	o+8GPnoWci1eGwHUMBpxefe8LcdvagMq5g8P65cA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646639784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AqkD0a1sfpTK23haq3I0UTRjotQuhnanHaOlf2RrZI4=;
	b=AmYcZi5w9rGF71MDQ251XqqZ5ySZGtEZOjtnYtojqzC0XxiSrPkIHGPifFa9wck2
	ExEr4oxbD/KdqxTyDYOSDoVzz2udJRrlc5lW9+n8grGdtq+Gu9U1mJW3oQSHURn2fYO
	ykHkyDQyALJ8HziJY0zYihso732Z47ACHOvh+HO8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f63612348-77d32a4c-a1b1-434c-9e71-0f3434fe3a2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a50b733cd4e6e3314f05060ad99641c05b6f6dafc03b24d811d5c47ff4a43a3
Date: Mon, 7 Mar 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646639784
