Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F340910EE
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 05:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651989418;
	h=To:Subject:From:Message-Id:Date;
	bh=RCpxw9zpVMF1ZWb5Lk/v2LKiOIcXOTlH5VFsPzgHqxk=;
	b=CXLPZGK5gm8O/+2hpEUAfy4iFlVNLCRBEguCu5Xt+xH6wnr4xDGqol5XMUtCS+MU
	nd9sg9L8zhGwhplJHgboxmXuFqpUjCMaQJA2HZ9T3p06kSup9YogGjwG53ZJhgmEzCS
	l7V6qovaZo9aFxHEktNcEDkWNzRVPz71KG1qaIjg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651989418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RCpxw9zpVMF1ZWb5Lk/v2LKiOIcXOTlH5VFsPzgHqxk=;
	b=aEaYXkI6fB7db+pJdmmUYZdMJekzLjZ0A0Hj8vw5SdTM84dcZTzuEmeT+SEltKq4
	7RQnoChfFf5VlcpsAPkGl93jGUlamliJR3B4FudTzuR0QD+kuJkqzG0gLZ8SXDY2grb
	NXaURyk0KGgp4FnO2I4PDRSKw40UN0GW7n99BPJk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a23e111a-b68d218e-af63-4777-949b-49dd8926e337-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00b69729725d58cacc8d8c6936502ab82d4ab686a718ba532b5a041076aa8a38
Date: Sun, 8 May 2022 05:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651989418
