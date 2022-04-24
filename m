Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB242F2F
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 15:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650812698;
	h=To:Subject:From:Message-Id:Date;
	bh=tV4PAdPeVZvpek4tvgtWEiUDePpjl7u07LSZ11rWMDA=;
	b=aIYbY3Bm7FB8BZ+9AacTXhQHUg00SGQWHbwBwBIvdBsM/0YFkswjFMwTzR2idIkl
	5eMCcISa2Z2RUJ+aXEFNQXI1W0bU/huxxK3oFCLdSGP+rZCrh6qYjQllFX2Bzaqhw6V
	1kIyk2r4INdxKLE0Wlnac63GbbjaxWODSQoiUIXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650812698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tV4PAdPeVZvpek4tvgtWEiUDePpjl7u07LSZ11rWMDA=;
	b=k/NUI5OCbTdw0ujbKHaAt2A0KEZDNpwagCCCFSGs4RVkpuLdxraLU3kRWTZVTzZ+
	letBVTKA51K2IVhUvzfIjfuW90dWhqwZSZhfeVXfNY/g8x8eOYBIZH7i6Swn9xnp+UM
	MttM6ESxUQRHjnctNMERMY0jnBPZQjM/OrvOdkjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805c1abea8-65be382e-61b7-4c08-b66b-8cf284f39603-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6a896f13d1c973c84a73e04533cd72347fa4c1b8a569338f5e31da132c4b49d
Date: Sun, 24 Apr 2022 15:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650812698
