Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC0B67C
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 08:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644739257;
	h=To:Subject:From:Message-Id:Date;
	bh=zw7CGfZoMgYhGtgUTSISoAl9iup9GcT/4HboMVK5mPQ=;
	b=kM8a/9HCLrlfyXKLbg7hIGWTGFiOGjZdbSLfM4HVq2QUuW17rIyDv31AEJQTSeYR
	gmomsoy+RFUAJH7U1DG4dmOn3S52ROKVYkOYgXV0uNDWOzTMfrvTeQeD8h6nXd+Jb+7
	2C8W6IJpL6/RMNalUr5Dc6CuQ8c60ypV/U2qckWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644739257;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zw7CGfZoMgYhGtgUTSISoAl9iup9GcT/4HboMVK5mPQ=;
	b=XkK/IBooNkDu5XMs6v+/SKNc3lwlI4iiOgjIKxKwIXIB0Bs061C/D8J213DNukhj
	T2Rjortdxmy3WEkUFfjIIvA+Cebu0Hj+GkWHn5t8AJmYtt5Fs55Po4Y5hssGUgFM/sQ
	Un4Jq3DMlq2Nd8JeTyjWJYqD/FsHPsDguClGHX/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef219616b-90090fdc-0e37-4229-8d64-fce0668a0d2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b711b5236ce1fff206fab8891cacab322ed11ffbfe72df2e283e3341c2f6860
Date: Sun, 13 Feb 2022 08:00:56 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644739256
