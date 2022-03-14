Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762F77A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647246684;
	h=To:Subject:From:Message-Id:Date;
	bh=bfvwefQNjzwip5rq6WaxAUTrwfiyShQK3d+Y4jGVLYk=;
	b=U1/H/UPmVt6O5gxu9rAn1CWvSP5FhBc/niivCNdWKZ6ovAtz1POwACT9CHJcS4+j
	Jc83ysqCTp+868jl5EjBCpLoByQtKEF9z5lvgWbUt2yjXLgY3XeZE0lCtKKFow8KkKg
	ZgzDZ9M/qtvGxDCXMzfXC541H+H/zbYY2Jz+aBho=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647246684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bfvwefQNjzwip5rq6WaxAUTrwfiyShQK3d+Y4jGVLYk=;
	b=eQ57Ykksx1E20SW+eZ2ImBdCnRC9jOWaK5a4pK4yHgcpMH8myDIWPdLk4Y+xpXC0
	btKm/7WkyehtqPnirXg0jSyDIUCOqkHR6tuVBEYUSNZo+gOHs+IYS40agCOnMi6Y8E2
	NtUga1j2WLs6hEnDkz1R66CjRSugvDP/qpYCT13M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f878db23d-5142224a-b578-4e5b-8c3e-f58d828cdbac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3132f00eaed0e360b5bfb7737cc8352d8889ed4645d33dc7789b5c4b396047b
Date: Mon, 14 Mar 2022 08:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647246684
