Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0F1C7A
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 18:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646591784;
	h=To:Subject:From:Message-Id:Date;
	bh=qH668rFkfgLSNzWGovFicjasP8aGGHRkdjTmeDIQLf0=;
	b=aphP4JQdZQmkkC5UWaBkQM+rVxDtzz8E80UWwYu42vWWeuusqemXITKVNeGT/29h
	pKxL9qaWJ3CWvkTpwdRkv/gk9DkfqqGpcq0yDgXTuXfVqr2TO9QC1wRR7p254xIjK5j
	gfFqKZP620fg+27smBYgclvdlutx5y1tl0vu3pDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646591784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qH668rFkfgLSNzWGovFicjasP8aGGHRkdjTmeDIQLf0=;
	b=IBS2REFL+8uPRKriLif45ZBJRwDvsWxhCyXWbll4tS1AoehShi4D1luDEiadTmYW
	paVhfQgi0677MLmpfYwUzLM175wGcrT9QPn4VuRjSs74rZiioTVtdXlJ76PgSQMxcvz
	WS8T/VVvhnunOI834sF0Irt0avxJmpPXHo+qHQHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6084b756-ba5fd9d8-0394-4ea2-8ef1-deac4235260b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be320beb14ee3d932a13934d8668aa04890f60bfa9c503a69cd5d9448c2d2347
Date: Sun, 6 Mar 2022 18:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646591784
