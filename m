Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CD14AA8
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646757684;
	h=To:Subject:From:Message-Id:Date;
	bh=iFNBShQ1EJoRTi9312XXgWN8bmihgMyUuUxFZKQWtnc=;
	b=g5n3BO6WpPMzKUCUK2Afc7Mh86xeAE1+qr5zwxdN+agCnMwHj4r7PssPTWIM61Nw
	4N93+Jh/ZfSC1QyR0H+/mpwD37VezCAWTWDrZogVNMUAaqrzCRLBMxu++YECj7ipWCT
	3S/01TlhznRqcutQnPGCeTpb1+o36UNxzqpT3orQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646757684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iFNBShQ1EJoRTi9312XXgWN8bmihgMyUuUxFZKQWtnc=;
	b=d3BzlPwPlurKkNlhwVBuK4G/SN45qHc1XN5t3MYUQnFO62TQFKv/nRyu7IhJlogX
	CbySnFTQQvk480wFvZWbds4xPCa/V+wYUsNrftbYeZHFxZ/1ylo98RhN2hZFHKavLuC
	MAp0iB1g5i4qPww3c+LbKQ4JXvuKxAAQ7kOPRr4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6a682602-adb02a29-655f-424a-9b15-0e04af7f8565-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13e2fa22f51e48041e71a024b0f1bc50e3c6125884cf1547ba056715bf7759da
Date: Tue, 8 Mar 2022 16:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646757684
