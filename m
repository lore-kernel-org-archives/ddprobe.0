Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A57BA441E
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660753253;
	h=To:Subject:From:Message-Id:Date;
	bh=rnMYAWs1N6prtFUGMfMIgHdyUlzxpNuZjtAjKTnH/0U=;
	b=VLjuvTmKhTSJ29mo1newvnv/8qRVeWYDKXZt6F5gTtN1NBAO0/rKSvdmi2F7/V8D
	OZaD5q+IptSkLMMiHj61j4TzI9kajaDZuPAwtuuFMObUPfFiOC/iSDo9G+jThqN0FSP
	x0nCMJ9vEN312xzLC0P3DqBNvsJLThOXd+Kkvtu0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660753253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rnMYAWs1N6prtFUGMfMIgHdyUlzxpNuZjtAjKTnH/0U=;
	b=YYjGsn6VGpDyPwU77K0HRa8zDHvzNzs8hWqDkmt4IMtGbUk2/Le3f6lEYrHBFgVm
	QtNheS0XzFd7Wv6tMfQpep+/vRGZq3YIzDcC77TekWriImfyvY217knnxBcDItwi3HO
	As++NIK39cur/8n6Cc2zCn6ayMXXLiV6bxGyggvM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ac9b9163-c90281ee-0442-41d0-b999-55accd00e7ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8330c138bb881cdece212dc5ca159160de682c43efbb8f83b732cc66fc0b3da
Date: Wed, 17 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660753252
