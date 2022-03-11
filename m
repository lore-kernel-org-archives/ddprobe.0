Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FD033E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 16:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647014785;
	h=To:Subject:From:Message-Id:Date;
	bh=vwdM/9ccB5P7hn+4ByXXE9MOdspjwol7vtYWZoTpj2k=;
	b=enQcvm4ryEGjO1SigFVdNv8kz1pPz4+9B7++BjnWonJQh3sGrZL8kq5ru5j41DsU
	otAbrdrxintZhAhwicNsX+cN2THA4+P4+1vwgRvX5m5+fvOFsVklikz4W+Awz0r8L8T
	qpJfid9SmHS6I5d2LMEh6wW41dHpv0JLGthBam5g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647014785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vwdM/9ccB5P7hn+4ByXXE9MOdspjwol7vtYWZoTpj2k=;
	b=TF0Frb07+nN71XPyYnVCjzYhR9IJKWTRE4NfvpjkIRoa3oLkehoSS/oGfzMA4LZW
	eioKqgcxZUnLzAHNk98pagSisNqE33f7bZPoMecMPijyzliihyTQ6NbJ39UKh14EG9K
	tya0c3y83aBkqOI/Yj5nyTdPkMr6jc3VxC0j1sbQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79bb3016-4206443c-d312-48fd-ae5f-6a53a43a279e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18787ba30f318ed4f6e9d682b0dbe584ecb54c0287436a910bbbc477b5baf79d
Date: Fri, 11 Mar 2022 16:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647014784
