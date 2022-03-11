Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762E5211B
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647024984;
	h=To:Subject:From:Message-Id:Date;
	bh=aHpHT3L41nTx1rkxeCmxDYGSQRUU0KOIYf7sm9xrjBE=;
	b=Rx+diT+a3ZxGh1C8eM/dj8skejbUBdAmX7Ly1+f8PMeH8ubNDUJP3QkObtSo12FA
	L7JrdrI4Mypu8jnCv4EEBevW5hHoTaUiidc8mll33+3oBiQwyzjW7vUIpbw1xsy0FmK
	vxYpqw6C+dxgURyZWlsG/pSVq/r8gUFcyVer9+Pk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647024984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aHpHT3L41nTx1rkxeCmxDYGSQRUU0KOIYf7sm9xrjBE=;
	b=PvyzeQsImdYaQ+cS/TfSOP2N320l9Z5ijt5x2niqFC1XhDT3fCNEVAhQ1OO1WSwr
	lbxNKJ+3K7dwKenEwbRdnPDSB18Qw3kyPffhlfmTX5HLb2/mpcm0+AvNw0cS4qRukpS
	DdlM3du6qU6dUCD8ZnubMI8KKHfXNlJdZ0aUsQhM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a56d2e8-fa59b22d-f33d-49d3-9a9a-5d0820fe0ea9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 259988bd9c8fdf6a2c41a53cc03e730ca57ce7bac4f09662aa863d05aef651ea
Date: Fri, 11 Mar 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647024984
