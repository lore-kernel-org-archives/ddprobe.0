Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 874F07A
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 02:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648000884;
	h=To:Subject:From:Message-Id:Date;
	bh=g7sGj5WET8JZZ2z70ijqu8VOpzn1+27oFXOnLbupmeo=;
	b=U7KESW5FNfzNvVGQbZ6S/dWl/QESaSvRvsLfzkpWcV59juqMAenvzK0ohlvsQZcv
	I3bFlnhYNG5IBVUBFVE2imsYX5d4eFLIQ3LcwjtFZEThfVBL2OC2W4Vf0Qccp3Jt5I3
	SArgIhjdDe7lFvPwswSH4gRGJcRSZQ15b1+fDjjs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648000884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g7sGj5WET8JZZ2z70ijqu8VOpzn1+27oFXOnLbupmeo=;
	b=eHajxQK/9e8ebW7MxYRiPM9OIpPcx/4SSZQq/SN2Kv4exKUdfL/uSxbjYOWQpX/2
	o2mLrLEcdglLiRsN3cBAD/0eZU33CbygKNFKnRgBlxwxsyYj3doJzLciV6CheKFywh9
	ZayQpr+XOtIRCsQESZblY+mLCzktc7F0TFBH3S+A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb481e00f-7394b470-1ad9-4e91-9f72-a80c91e2baaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7611683e5c4173442baa4f09bedd1a16bfb2b25c3be81e3525b52af5d853c36
Date: Wed, 23 Mar 2022 02:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648000884
