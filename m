Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29EA7B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645493785;
	h=To:Subject:From:Message-Id:Date;
	bh=kkHD/uS89+31A84crKNoUBK2VLKbIwlDpdhK7IBTz8g=;
	b=msNkyPLXB4bZvu4eEAiyGLC6d4EifQLmuxIXryZlImShZLldLYepq0/whb8HM4jf
	rPL+308TO9q/AIlB/1c9rqbFVFNSFl/PTYUeG2eaU9CSllY5+Fxi20bKGbVm+iN4y6v
	leTMKuHNMVwNkhJNg4oJVUmfxyiMVNC/8xgNXpWA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645493785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kkHD/uS89+31A84crKNoUBK2VLKbIwlDpdhK7IBTz8g=;
	b=gZk4d0zKP2wgpSbZoCz1Rsa53ut7IiLf93zOikyCosaH+dTX9SQXWFGpMfcOCm6q
	jPuIbv+ePmU1+8ZUbJ+4JRSDT8OiLJU1j9bP2WR0ybrVDGbO+KyhgR7Yld/fL3sjgWG
	XshxbbOdmFiNo9BWmY9cWAQ8KWVPeGUftX0qPp2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1f1290de-d8a1ce3c-5bdf-4abf-ba76-9f5c706cadfc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28e736709ee2ba6e5d67d3e285153e19773e8ff7f98f39a3568c93ce9cd68610
Date: Tue, 22 Feb 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645493784
