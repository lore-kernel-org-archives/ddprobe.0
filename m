Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 831206946
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 23:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645572384;
	h=To:Subject:From:Message-Id:Date;
	bh=WHCUZyeSf8dhxuEpJl16uT9s45B3C4enwqm4iFG1miY=;
	b=WJUG5+ajNhIzeMdrbKkCX3AU0sknj+XyzXxlOBdGvMt+vkQmjTKJYgjbG8z4Bci1
	8lI8Jz7uDROtwH5ImZ9XM3FfNEaNgOw1nq8oS5kH2fZOEQ4KsHu79vAZRJHezXveEh6
	I5H86FnHQ/NvvI56sSoRkrszhxCY7yTZd+xShT+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645572384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WHCUZyeSf8dhxuEpJl16uT9s45B3C4enwqm4iFG1miY=;
	b=iUCcT6a1Hs58iBn13+ukaJXwsnrDJhZS6TwyfOruCfqv+8ij8GSDnI1DtYOCA02E
	BTfboHcj5vsucNEWIVvd1ahc7WlBJhxgrtagMCeHUFrkGZNGaEIQIe3raUvU+iotGkG
	rKhUQs8FZrQXorvV09kdQRh1EvQiHjHjLDE+E5ko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f23c1e814-af12ffef-9f03-47c6-a3dc-9ddacec08f4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a082bbc648a3313b36c1896e666082d379c4e5408ba4e76a8327571a0cedb3f
Date: Tue, 22 Feb 2022 23:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645572384
