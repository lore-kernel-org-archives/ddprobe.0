Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FD17D
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 19:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644780636;
	h=To:Subject:From:Message-Id:Date;
	bh=TZ/03qSqQc1G8F4atN+JbmNjq9Ybedqhlxvzh+uDpQo=;
	b=KTUXPfTZ/qn4STiNc4xPFhH40gmhqZHe1TnGAJBJ18v2FmQ8dU8fbDDSuO+DYtq2
	0+kglNmp++jSYIHkTvgFueZHKqD0qAvB4gUbqH8UeHwB5CqW2EmlG8bBPYyQcgga/u/
	MPWyyGFGl/JaJphSbKNYeG598aHGf+mpclVKKg2s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644780636;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TZ/03qSqQc1G8F4atN+JbmNjq9Ybedqhlxvzh+uDpQo=;
	b=Y5yPFUMGWM+fIEHTUR7bDMxgePJY3BNN9PyXh60SlwWzSlfa7ueFRzdQ2XDqJFLD
	m4kh0QagzhCyGADR+jAldxNvrpqo9Q1FLzahaFkVXIooSNbGfBN9ZV2m2qlAA+GlaTr
	oAIgP72i8JDbF9C/RwC/QFHD/uasSyurjc1fsTvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef490c9ae-93c4210d-7592-40ce-b494-df4b37bef3ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b7f8c4b14e266da22ff96b4b32ddf41d8e5c07937d20fc9cc1722ff0d144bcc
Date: Sun, 13 Feb 2022 19:30:36 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644780636
