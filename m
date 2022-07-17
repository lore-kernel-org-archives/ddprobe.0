Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B62764C
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 11:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658056012;
	h=To:Subject:From:Message-Id:Date;
	bh=huln3/3vNUScBYBHebqfpxz7HrWkuldhR+yo4l93O4U=;
	b=K0JwaeKvRLSeAarIyKbuiVUeYW9sT6j31LlMMqNm+5G7msLUzD2R4uL7Rkcqg85+
	l0jnYXc/l1DzA9A4whzDQlG/0nwlGd60E/vSo0WHCTHa9Ei0M4Htmx1de8OU/Hdrutc
	54jo0+gGqEQrYt2rc0E6/vjj639ODaYhBq7lUHWw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658056012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=huln3/3vNUScBYBHebqfpxz7HrWkuldhR+yo4l93O4U=;
	b=ay6Ib+7iFOqD4n4d3zKr6RUIrntAxV1TKmMJOgvFkBWQpgTKHJCX5kBsw7OGYLIf
	hNFg4vkwuwNIpzRfkZ5Q+8+w9954DHs7MHSaf7HuVLzX8NuX8Ivm1hLwuk/onTom3Nj
	iPsRD2x1tLUv8GO8vLivT7mSb/RCD4HvT8sXQaRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820bd6f220-c4c4cba4-0e4d-4bbe-b493-24f898b0fa61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e392a4d0bf0623dfbc92ce8859e461d52e3c6a2accc0a2d469a5186734dc589
Date: Sun, 17 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658056012
