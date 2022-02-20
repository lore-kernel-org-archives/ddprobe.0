Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566ED181
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645320084;
	h=To:Subject:From:Message-Id:Date;
	bh=J1Mo3xSgmqRI92DI5LJ0LgPjqz8F+k5VPKHiIuPbmSI=;
	b=KxWPdc6seHmdGI5lLvq7frmkua1ojeBHlg/aKFRxHA3moVMi4Cih94pyGnXD9cqw
	55kO1NQZn7Zll/pNektEKwbx/3kpysnONzCmYqUISp9pj+HIe4oj0XLtEdx/5EaZADx
	pGaoBUldEiLrDBlkO5LEZsAwLWruWbe8C8AU4n00=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645320084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J1Mo3xSgmqRI92DI5LJ0LgPjqz8F+k5VPKHiIuPbmSI=;
	b=ArbYM8FDtIeZiKvi8j8enBFTC0u6XQXOokoolKmjrSZNpw4zhUEEcSJLbiefVe7d
	Ii2YNJ61e9GRmIO/KnNxS1LcGFi4O8L7QCcmfBDS0MWPTzrPtUsfcy9wDxpALABWXan
	plyDkwYk7/c2hgojpS9UcCyn7Ad3iCoVtBYXGu8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f14b81d1b-e741f228-2917-405c-a99e-c10b307c914f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9585683b7b42824ed4f0ef34c3f8e0d8e6369c7dfa9e4539170eacaf68d61c4e
Date: Sun, 20 Feb 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645320084
