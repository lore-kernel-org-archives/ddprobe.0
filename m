Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BBA84C60
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647677184;
	h=To:Subject:From:Message-Id:Date;
	bh=N5wqITNhAt1x6yBXgkjW8B10AqFTSvU23hyQbS1+c1s=;
	b=bA4mTFV1KrpRFul/c52BeRjnm+UjCsRTYP3czePonIvJ9C6c1HwJ/040zKZCpGIy
	tW1PNp7rVH9+BSqMi5+ieiGhGr8Pg2WIM5yfQY9LSvX2jt2D5oVCCCrDscSXnCrAsRb
	CIKlLjXHhLnG2UlM/xZ3tpid9pXgABWk5BMo1Uxw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647677184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N5wqITNhAt1x6yBXgkjW8B10AqFTSvU23hyQbS1+c1s=;
	b=jfMtzS+loCzLuyjNM+kJQC46n9vT6R0omzxhnvSYzky6uIY4VZ+rqEaR3na4G3aP
	BC2bhuxHeYVdOU5WmVDa14bnCtBElrkB6ciDJ4KUTIEzdNkXWvCdwe50OT4DSS3r7JH
	qUZBnDHoaII8QIEJr5uxmoPmvuw7Fi8BqkPg9maM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1369b1d-0b7dc5ad-ddf1-4bd0-bf71-1ff78a425924-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0e31b0baae25f31f708b5a1f7434bb9c206a7d6b18d426bed83a56d8b8b7387
Date: Sat, 19 Mar 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647677184
