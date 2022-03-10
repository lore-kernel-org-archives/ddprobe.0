Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C652B182
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646937085;
	h=To:Subject:From:Message-Id:Date;
	bh=KjmQccEjQqpF4hrJVgAW0VqnEQnlK28xwQTBvfO/8y0=;
	b=YN1nZ0UdbJQr0B59P+Z7vAeRCaQFxVnZgtqpnEBH7qCGFpjqxKNITR3RwdufoWQA
	g0Ipkbb/z1xzuNLdSSVzn5KTIOcPkOx9jM90t7Qz0fgrOrPKmw9TW8iJjdMjwnQ4fZn
	tDc/pBGT9X2HaE1n2EygR5MUvoop8KbZeI2DzLS8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646937085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KjmQccEjQqpF4hrJVgAW0VqnEQnlK28xwQTBvfO/8y0=;
	b=NSXproBZDZl2du0HDnA1vV41z8zNaoRnM70fhcf8gYrfyasqZ9h1PPAs9lWXOIhN
	J7CDvntGtiqJgJ99yh0p4s9klk1i8cbXDvDg0wZ4YX/oKZvjsHIiI3pj0iUTmFBQfYp
	mrgbrv4iv+gPKOjST1XT2rHuM73pPEg+T8T/GZGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f751993e7-e12a8e67-8f0e-4d3e-bca8-02326a7f0654-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d0faf3bfd37077354c65bc65dafa09a922f6c2c11d7edc6d8927e43e8a76e27
Date: Thu, 10 Mar 2022 18:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646937084
