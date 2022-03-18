Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C315388
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647640285;
	h=To:Subject:From:Message-Id:Date;
	bh=P6qz461/9ELzhbouFBdltaMYqnXpbrYGIkT7RfVvSRA=;
	b=FXV2P1CAofnZnmiNWurSiCM17m8jAcW8Dm09sh8/Hf3YmLYiYSjnIFJEhIL1tjd7
	IJygIsa0Ydtgi6jp3U6rnDkxqRi1N/8clug+PRTFzpcrQMA4eJlnGQh7qE/qg1hBO14
	MwDZmAE7+V3Oup8ZC03Ywz7JByrmOj9Nal2VDlis=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647640285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P6qz461/9ELzhbouFBdltaMYqnXpbrYGIkT7RfVvSRA=;
	b=kO7owrqXl6DZ2qAzR91sTWub4lifunKM3MFs/R/kZdRj2xXAfjxU5/B/0Qa1/Mrf
	qQyLTstEPj3JZtUqHKLiwX83gA48WElq6jA7DJrORk3luL9oObcDIwRy+QAwqRKkWK2
	Z0ULXaMyvJh6NllPZn9nSBt30TCVc/aVrbHvVTNM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f038e82-3912ec5b-4008-4c48-8386-20ac56301bd3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20e7c0bb2c9a069f29224602e35b031b3c38eadef444efcafb7c7845896c4a35
Date: Fri, 18 Mar 2022 21:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647640284
