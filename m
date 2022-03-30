Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D66D736C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 07:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648625459;
	h=To:Subject:From:Message-Id:Date;
	bh=++JdIrTZPhbKsCghMQr7Oi5iDvvoPodUMko4W4n6ptc=;
	b=jekVJGPuhxeE/o5SKrs6GivrecRgNJZh+MYai8rF60szJHxo4DsAMzAP2u3X3FCS
	W5IW1EFt01ArtGstZGGd5xmRHhtwvpSIDTa7FupoO7H5FxN0SW4C3OogsCX3Q4F/Gm5
	Qw0IS3wJfT6RhEjIFWcx9pP5rLOoRZWYppGgR8Tc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648625459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=++JdIrTZPhbKsCghMQr7Oi5iDvvoPodUMko4W4n6ptc=;
	b=UmDDMyIJk5ULmfYBYivKJhj4/X2x8qRRq3K3UipACFKT1+8BRrlj+GcqdxBzBpnr
	gkxiZpz7xXNgm5rNEVNyc+LBcQ7XJmNJ58O+5NenKlm7Y4q72GEQjNDuSpiO9H67CFV
	kp0p+1OaB3fQC8N6zKJKbqgDIeo1bXtODuykU+lo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd9bc1c78-c38c5b4b-a0da-4251-a3d6-e549373ca543-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0baf0f81d1315c8acd485d0998bd41be3ee13c02cf56defb474a617f846f506d
Date: Wed, 30 Mar 2022 07:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648625458
