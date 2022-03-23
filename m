Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4561B72
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 16:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648052185;
	h=To:Subject:From:Message-Id:Date;
	bh=Vvpmll4lXZ6COXw0/f5rYKBVmzloO/e5rGMqLzR3Jy0=;
	b=g3rAkrmY5Yj0CHhTXuiMRczQMdxb9QPwpAuAQ9vyeNQXuVFi0XoqNTjuzo3IlpEG
	BzEZjaOch9hWHH8rldPbSXFZtYRaJh638O43e7u8XzVyMgBJj+v/G3v67gefSiE6mgQ
	rW9Z0PsWiySgYlzhfzBTtOj5qQaiGIzBJEir1tUY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648052185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vvpmll4lXZ6COXw0/f5rYKBVmzloO/e5rGMqLzR3Jy0=;
	b=OUhibYdElJECvucPesTyHLtBJe6SFIWYM4BIhcgaW8zof8YfA/HqS2U6kK2IJEyQ
	+jdceFQLdvqt4P8BEqhw60fIqCsqcEUj/Av9Yn7czxcl8IjZEDTjgVaiJE2Tnl4wv7B
	Vc8c+33t1CBInFQuB23b3ANXbUiC/zlXjtB7mRD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb790a6df-b56205b3-4909-4e87-b8de-bed0d3bb94d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fbbcb0f1c0b735fa7389b4f6620f2855281e4669adf369138272c924031d69f
Date: Wed, 23 Mar 2022 16:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648052184
