Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D887A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 06:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655361179;
	h=To:Subject:From:Message-Id:Date;
	bh=f2POtt3y88kZ18EvUpHekoTW1qlmM+A0jyX9WW6b8ig=;
	b=VSYdt09Tv9P1JYcWEhA30VbnIRTS+k24A/L9/T/RJC+SpESvyeBEd0MEiHGXCl1/
	HKKs71T61d7/vumfKkiFr0sEGi//5Xn5OB66NnZl0e1VJUXb5P1K6W0Xg/3ckgmXzSj
	AJ27weZDoW3j3hs7L49gxjswlfWWBbFZR9GVIAU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655361179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f2POtt3y88kZ18EvUpHekoTW1qlmM+A0jyX9WW6b8ig=;
	b=k3dewJsJ/U/hJB0HtKgnZWv9O2a67NvfTKrCBRNmNERZyfC8L6Nm/QLeS0eVleAg
	EbIGOuIhH+jtQTSFePsU+hGnn3W1MMNrFtqp/xTpLziQVpaU+iEKcDhxaD0SeNMI6QA
	BkY6buGOwvB2SdeyXbjmsG91vEi85Zz+lgD/AriE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816b370eb9-ee5c7bb6-3a67-400f-923d-ca9301af2776-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcaf38824c6cad16df93e3520644e3856de2339dc62b3c18a246d0cf4d31e670
Date: Thu, 16 Jun 2022 06:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655361179
