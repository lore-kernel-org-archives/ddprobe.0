Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E390F7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 14:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655561039;
	h=To:Subject:From:Message-Id:Date;
	bh=QxuRmJvmIVK7fUuQmaTA+Gu1lxTVtXfAx/8h8Apq65Y=;
	b=AXxaUVKoHoKT6+9rB/+AG/qfZ5Q2XfoYBDA+wLjcf/0CetC0Ps7ym4Mq1u2eRBLO
	/M9Wb4lQluxgN972m5Oo5mEnnryB8mzn6P8MSI5y6zKoZD3HZAO/JDI7VTR729fVpWZ
	hChUXttR4+T7g9m/TmVvOuEWCuUu7WtFZyYiIMR4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655561039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QxuRmJvmIVK7fUuQmaTA+Gu1lxTVtXfAx/8h8Apq65Y=;
	b=FB+ZZr2VaJo4hNw7WC+V8GK0IPZJA5YSvkrW74p7Lm/VDFv8dnwMRBiZOH4Qbs3I
	PmZCpCz1Qk4rH8nLurMQCvpsG/k7RNkxoRMjB/9JuNOa46LKRPAWD9BKsBeUDiYw/rX
	8tvZ+1w53TOnmfWcDbh+Ibjaaqr4iim2Gf4K43C0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817720ad9d-66eb74f7-0a14-4bc0-b0f3-3202e9423285-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b7e4729254a1154e638fe2b2f6d0a5466f8ff15bd91f5ebedd4d01d6ba793ee
Date: Sat, 18 Jun 2022 14:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655561039
