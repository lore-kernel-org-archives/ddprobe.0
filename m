Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65617C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 21:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650750058;
	h=To:Subject:From:Message-Id:Date;
	bh=D4+GahCWzR2ig7mtX+xEM5WaJW4No01PbTpYzkCD/TE=;
	b=j1blUHrvSQeeXZZXu+aks9Fkrw0kxQFGaEybnvumxOJjTQlafx8vmUxywO3jyClf
	u+yTLZFDlbGaQldEKTzrfSU6me8xgCEaYERzfK8kG0axeVJGjagP9S5NpbU2ZVX175a
	IiQOVnOcl2/d6wSo8KXUS3F0eToBBwhw7oM+eWVA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650750058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D4+GahCWzR2ig7mtX+xEM5WaJW4No01PbTpYzkCD/TE=;
	b=Ea7IGKNSdttfrR8FFgk+4nPHlnc4oxv0l7PF6QUpa1jnpo1wZ+LVlbUCg45wFq+B
	fZ2lnal07U8VSdBOlNalHFbqd3XVTVS/er6aEQUPubbsrthb04dPWozfK2UqbxXTRXs
	hkx+Br5wWPnMR8T9ly6YaS9YDmIfwBWvY6tAveTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180585eeefd-d733c4fa-a48b-458b-b4bc-dddb3a1076fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ceeed39adcfad6488c2cf8282a882529ffb512e92f9788b6af4bfcb6645f8c24
Date: Sat, 23 Apr 2022 21:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650750058
