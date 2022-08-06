Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669D91C04
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659802252;
	h=To:Subject:From:Message-Id:Date;
	bh=H8u62vMSFiTs0FCpSMaf4GEtIBXRjjwZFEyAMsNkqVk=;
	b=cIWinXoRAEsNooEbK0hhsyNtjJphWcTgM0ehqQcYJz3P2uEGoQ4aSA6frcKVDNOS
	vaxIJTtQsxqLIRrlk3PbfctmP8WeMggyUNZ3lbVSWw1QYmuzA8TWwtIJAzY4oLmAuqJ
	3M0gCB8kbLwRffrFT0Yq2kNKbqQYHJH+1Tkndik4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659802252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H8u62vMSFiTs0FCpSMaf4GEtIBXRjjwZFEyAMsNkqVk=;
	b=EiYKaewhSymNfDZtHuWOZK75fLDRAC4VQdFa+ChyMRh5BK6Eb5tDrXGdaTzuWNbb
	JTSH+2fugf2BstNRmjHdRqPuvD4DAYuoicc7ojqBvxOz2j5dNhFiJWoPaVSXvV+IZrP
	qigOvQp32dh9LY7RGnHhnEFhdE+hpUh8aFZikYqo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018273ec752b-63c52ac2-2524-4f7d-acfe-2adc5d28df38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14f0230d72093ca5f16db47a63d97f84b31de127d1eb36fb026a78b0cfaff7ce
Date: Sat, 6 Aug 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659802252
