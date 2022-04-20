Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF2FB10F3
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 01:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650419338;
	h=To:Subject:From:Message-Id:Date;
	bh=J0IREBrThtDoehPq/sfu+2btDTBDPxyabJAPc52ZGfw=;
	b=cbal996K7nnrycVBcrwM6K3YVRzApZ8Igem7fUb4hguWFbrkjvfJmlJ7ngYyTJed
	9rkIxtTaSv+Rf8A/y5af9Jq1Q/iEOEdFD4h72Hfhae0ub/dBB0QzNjlJLLfk02Tq40Y
	0rf54frdXUlbLbS7hqTnNv2oo5IFJ7f3SKHGuTpI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650419338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J0IREBrThtDoehPq/sfu+2btDTBDPxyabJAPc52ZGfw=;
	b=Az6IGupC7j1JT9C+0UHNLrL1g2Qgm3yMaSeQgX9dLHoRHBjRpx2B165hkUEMGFrR
	v83T/0Jwzg6p3u3jDVuxKOfi8F8dyP4HwDqg9Z7ms+jnuUmovvHtGiC5i9XFwMPIUue
	wJCitJOCXlfBiUXst1dkiLx5N/8XasKxd4u3n6o0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018044a88c17-46c103ca-8216-4d63-a11d-a663e0f010ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be47921da01e1b0d82ed2b6e3b04053408fdcde0cd8749f87000ff66a041ad86
Date: Wed, 20 Apr 2022 01:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650419338
