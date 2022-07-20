Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD7C6AA0
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 17:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658339812;
	h=To:Subject:From:Message-Id:Date;
	bh=vXqpqAQ6pxpcagOvqf2okxwf9pSdifUp0cXBr5/Yyq0=;
	b=YdpkOpdJA7ZaR7ozotf7SaRFn3ixOoEpiJybHXtBHh+8RmczagEbX8LxT/efvbTP
	lOLZNnaVoKRKrgMq/ae5uHTrBJUJRRPGitGa0JS68uhCEL4Y8tCmMQhbdKn6xJJq7qt
	7ceW7wMWDdEPd4v5HvfSGEKoDHPNVt9YHTgEmuWE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658339812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vXqpqAQ6pxpcagOvqf2okxwf9pSdifUp0cXBr5/Yyq0=;
	b=Z5pFjoEjbJMBJSxVwKlYNGaqxj2F+iM40U9J0Z5x7b61f6/ZhM1XhKgJoEsjAv0F
	as3jwTrj9OW0Q8MfKyFOwkGEimS0vQHn6+olRC/QwRwU9Et/Os2w43CUQzEjKidvPEg
	ZVuCFJOFXzF++Bx4ev5iu8P628xqJ4Uf3vaVecwI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821cc163a4-23b08fe3-3799-4034-a98c-b351fce2d5cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c48165a75cca1a5e60649643b266d4e1e49b97a2e6ef5f9ed8849fdf73c975d
Date: Wed, 20 Jul 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658339812
