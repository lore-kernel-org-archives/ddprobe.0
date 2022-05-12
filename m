Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D8C217C1
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 04:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652329379;
	h=To:Subject:From:Message-Id:Date;
	bh=Fma+WXq/LuVaMSVvwozpP9nOj6QRn0UydZyyG0NDNyM=;
	b=Pru1jkE374ciiWIhE1LtJKJVAa1mRtyOOF27sKzahkxVSH1lutkTVf7XeJ8fLj2X
	k5Lgd0flrHxilG7n7YzbU96JZCHrrqZXCuPXt1j3c9f5IjohA7Fisa56Z3tzkWCGGp7
	VspY0dXWOCIJv+h1M16vWNiaTjIL6/p38TWRyW+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652329379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fma+WXq/LuVaMSVvwozpP9nOj6QRn0UydZyyG0NDNyM=;
	b=gF3TvXNC85N1iGvN7iS0RVVK+jV7Brgq2BAT5pa7kbf2ITjphuPYoCjMuq/5Gu5I
	n2IV7gUF2lW9iCsCzdE/qr3NMtBlPQAYQ+E3BWLZxYb3nm/txYDrEsUybBXYL3Tni1A
	N542UFp05YHNljAHo3o8Ve0x5AJlLhIIbf99O5tY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b6817669-e0f92a22-c46c-432c-829c-566d88971dcf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67a59b1963e85d2139eccb3415bdaeeed659aa534810e38bbb86c37bff80bb3e
Date: Thu, 12 May 2022 04:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652329379
