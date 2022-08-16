Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5E8110C
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660656653;
	h=To:Subject:From:Message-Id:Date;
	bh=Fjuvle6Fei+dt5hlTMh8Kjm1vDpsKQAcV2ucI36HJ4s=;
	b=X+3p7K/HyBAlq3HdmPjmbZy/J6OpzL7z6g5JyTSzBviEd+U26tO946hFK863bT6e
	UphyFtahOsbx/WlBI7TQEAJhTR0fSfqM0z9ysGiyLpNQAE5dcTIw1r3S8LkkVph124z
	8miu/EjSOumRh9sH02SBkGHBNGUjAb2qXccxrup4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660656653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fjuvle6Fei+dt5hlTMh8Kjm1vDpsKQAcV2ucI36HJ4s=;
	b=j2+r3tQZBZLdqUIZtNB0pcEvBQZ5cLGI1LLbB/M/d857IIhxYzZ47HC4gigGpsoc
	T8FmIneVKXR2reFFhUBK9EfCb2HUOq9O9pAgtg5YLt1AWYFGabgTRwZPRT7kObQ9Ko1
	KjCWQqCZt1aZHxT3ghd9upLxOKyVdtuMFkK+Mzqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a6d99246-dc7eab91-71e7-449c-a8b0-ca59d6f33f81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6f02bd718a23304b35c179ab96c6ab0a8178e9f3f4d0e4f0f401e50ad132f43
Date: Tue, 16 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660656652
