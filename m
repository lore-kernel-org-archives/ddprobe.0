Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1696F10E8
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 05:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656654412;
	h=To:Subject:From:Message-Id:Date;
	bh=P6BWXILh0FL7Jwce7IPTKo5HyC44HmEkd3wbR1CyXYw=;
	b=LDvg+IzgnwDyln2OGy2WHOb4CCAQ/q2lH94AdcZcfBD9FSwdrV4VuknI6JQlLSjE
	D8XHMCM2hhi6/a4DlrSaafyRfINpxeVmZu/ajQs/sDIX6WbrO/LeNYYI1nSe/tV21+0
	n81TRLcGWpjJwKrig6124scwrWaa3/PJ+pszhFME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656654412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P6BWXILh0FL7Jwce7IPTKo5HyC44HmEkd3wbR1CyXYw=;
	b=jup2dgLllaYLux2wsP1ijG8Pidbia3PAh5vRwKbMzigOcmHzPENsiVxxF+PqaGb5
	HJySHrabRnN/GfJpAjPWO9HPX9L4YliZauaaYpWvgHCd1Ymvez768ycYnS3wgK3DyZ4
	MVjnZ74grCffLVi7byM9J/5ImEb7qQAGbdHjFCfY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b84c3a21-40fff27e-e082-4524-b475-ffdb6beff5a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b820381a3ac956f08a58563ffab21af63a979bc453661d4e406594991d88b53f
Date: Fri, 1 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656654412
