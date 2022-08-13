Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D44F639
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660360252;
	h=To:Subject:From:Message-Id:Date;
	bh=dqJn1GaWTwTPtneh1NfNL8l6RpFjPAFC5DgtVi0ndn8=;
	b=br9QTxVLBSuq9x4F7RFf6sbZhTByJ8DjnsyyJ2FOvOBnykQJTiWDH+26BMW28ShP
	AEHCrTBZ3NXId1G6Cs3lg959NhIyixmGJIYlSFT4VNg3BSxO5gt6mzaRkUoYE2fAGpR
	Zp0TLpN3mOkaADmAE6UAKXo2WqE9tgXn4o6frtWg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660360252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dqJn1GaWTwTPtneh1NfNL8l6RpFjPAFC5DgtVi0ndn8=;
	b=e9vYfvO+LJEjT+z8z7KcDLDn4IA7Ivr31UjG194s8ECIwgnRjeCV7q8Hli9TFurP
	ifUsPdNA4cCQU2d4O2Nu40uyBEQCY5Ui9B4aeYB2Q6OcyCW2Ob+ShjpF0hPI9yxD6j4
	4lIpN+RBWUngh3b1mRnvegqg0Wjl2YELF5kGkv2E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182952edcab-8bf8651b-d87b-48c0-bb01-d2f01717572b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abf05814e44caeea27777fd261353fd0c80df718a9f079258fd6774005fe4d32
Date: Sat, 13 Aug 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660360252
