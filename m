Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9CF629
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 01:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653355559;
	h=To:Subject:From:Message-Id:Date;
	bh=GWHA3p/nr78MkjryQdJKYxggYNlpj+NqylL0ozfxDXs=;
	b=aBcPIt85lfNNbiNFbTVF7rmxdkzPmtazSnCVjzj4Kq8SDQAjIhHZt7GMiBgJrRdU
	ECBHevgkvEdosFltjl2wOCKKnKDxZj/1x9IDnWfBmsGPpZ9y1Elxq3sVjX5DBezjRhJ
	Z/E33sVBLCLhEejgHXRbSm19kdqEWiogsZU1vdkc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653355559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GWHA3p/nr78MkjryQdJKYxggYNlpj+NqylL0ozfxDXs=;
	b=Nz5lHOzdMhjxdRZHmSKk23a1p0x4HbD8+1ttxxTQAZj893LdHMZrth2lXl/1JyxR
	3h3AE75KQFDvgH1aYi/dvSdtOcMKyVbaL/lK5Yi1OAwRddrHcHSNIlhhkS8BChgum0Q
	Gd+vaDOaUEvpHc/mBwl4LMKuU9HSg9gYjDFJjuQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f3abb97b-2a20d291-97db-4d28-ae3a-d234c4a902d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 472c4d3cf44a94001a576a7e84d68d16ca4f7d80055db55088f46a9dc12a69b5
Date: Tue, 24 May 2022 01:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653355559
