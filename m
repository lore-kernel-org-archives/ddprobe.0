Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C8646B3
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 17:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657733212;
	h=To:Subject:From:Message-Id:Date;
	bh=9Zn43224+OZtTvSwbV3MnGyFDDAR/B7lY3wwbBobqr4=;
	b=GcuMgN42QmWt0wFdilQFeMFqXtniOz/1FewkwYv/a30kmXnNkf0Rj+LkI2vl8as0
	RFupi6m/6NTvhc+IqvG6Y3PFsxRnLb8X2UVLhkTmefXLJxlIywgHOCV1jXYmEk0mJk0
	xxpDjgMs3LeMS+FwRZlZwUcNT/eQxG2LUvtXeVeo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657733212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9Zn43224+OZtTvSwbV3MnGyFDDAR/B7lY3wwbBobqr4=;
	b=k+dlG5Act3Fxe/aNT2GtzLRu9zx4iHWd5d16i65FEO+mOrkAkSYYELOd65qTI+bd
	4gIIIK026X0moAqGrWiuCRY2WPiJv3qoQodJFbtrW0Yr9lzzEOiczFHtxMKQlUySmK6
	woYHVYjcKatawMpwQeYS9v6gX0X18DJDMswqeTeU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f8996875-5eb19888-8483-4682-919c-6cfa6aad08d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94bedbf81122cb65edd8c890fd532bca1b47a71da0b03dd225712b9a90aec780
Date: Wed, 13 Jul 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657733212
