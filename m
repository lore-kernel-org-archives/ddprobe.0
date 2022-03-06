Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D39B7C
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646606784;
	h=To:Subject:From:Message-Id:Date;
	bh=bKAd5IYnAjRAYENxXowYC4ZQjdNMc2t9GcYT7ScAb6k=;
	b=OF+/8SErPlFmmwaN4fWP1RHquBw89dHT0PMbkwhBJKeEBtsPJg6EiO50xUaKfuoL
	d0P+b8aSJhMDip1/qp5Ke1fOu6+RePANCitAGRbfS4HKPbMLgzJ1TDWJmIHuIZhJ7UO
	aurg55v5VGfqm45jKBQPluy8BXBtR9ILJF1XO8YQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646606784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bKAd5IYnAjRAYENxXowYC4ZQjdNMc2t9GcYT7ScAb6k=;
	b=AIOv7Uj8PO+rBuabt93PHVTggdbYxU5LgIoPJjGFJdimNdc3dR6vw7LvovBJiN8x
	wOuElzd2tgYREYKtrGldUW5ILNgWxD2MjoiDIPEb0A6+1wtfCjdUdVZbEEF4jL6v4aC
	sXE5frnFUInBT9zxl65Fcuo4LnKkq9nnLIxTmQuA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f616998e6-23decce3-4fb9-4c59-beb1-bdc93d2f4241-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0eb0639295739ab27027b06907034dac420050318609085f3ae65bfaeeae1315
Date: Sun, 6 Mar 2022 22:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646606784
