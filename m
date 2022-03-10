Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E5D18D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646931684;
	h=To:Subject:From:Message-Id:Date;
	bh=jxVGKOtKzQoWkAafWuMCmrQ/CBFfKWUb4Si7WPbGlMk=;
	b=KhLapWsR5D551eIknDQHrRKJD3yKvuoZTr+KreECPCaVqFVkk7Rnn/n2U5gpa1Kx
	hYB/9x6mhlG8BUOVUiWXiG4+RrJx4TibkEFl/M4u/0W01w0CHeZV7X1O8olNSyc2bfc
	PBBhMEt4Cf8QEOXNSyq/onYzDn8mI3Eg1O+hCsOg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646931684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jxVGKOtKzQoWkAafWuMCmrQ/CBFfKWUb4Si7WPbGlMk=;
	b=DPWgvWJ+wHKl7+BZadXt4KobS0sPfDvoyW3HAnDJNZTYGmJink5G2B6usndJKMHo
	bVBN7ZsAkEFjcsPyG8fd+IsvnXpRscPxeFb3lY0wNR6/pLDvns3fv4T94pSEkFMvt57
	sc8kEj+Um4Y25M0UgB9dh5uT5xp2Df2/LZ870fg0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f74c72dab-a7ecfba3-0df1-42de-a9c5-c191c7dffd35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b4617faee7004cbaf648a30adbdb9b0e711389f773bc31d19c005955ed3d956
Date: Thu, 10 Mar 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646931684
