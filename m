Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BED33CB
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 20:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654548899;
	h=To:Subject:From:Message-Id:Date;
	bh=8JmLfnVI3tZGsH/WGOleFg6A4PghKPM7f6sP1+M9sZI=;
	b=gpE1yPphYC/a3MtCjVIlLACx/0AhziYAEhYtLRb5pcyrieOrvLk6IqfsDUbB7PWr
	ZcmmAHu57HCCjFcyGDFXYKDU91vhnciA2LGz3OlnLyryA8tLhQE1pfsyvADJ1qkt+Kg
	KaMPLaacCcmxzYkz747Dy9GhXLtHB4WpkNcdwlb4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654548899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8JmLfnVI3tZGsH/WGOleFg6A4PghKPM7f6sP1+M9sZI=;
	b=YGX/BLYdv3vhAqkIWQgponzTGNtM3zuD3bGY8hpN6Owbuu7D3f+6jqcw3ifKaMML
	VORCH249o312m8c8G9DTfdtCEIEYZd7FC1Ucz/XaSOAWLweseQuI6dKUdKQs24Iadtm
	yYKswd9qVJj9NoFnztfn1R5xRxtgnYFWElF3Ac9k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813acca660-d9df3842-1c57-42ab-95f8-196af524e72f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5a7753e2f151e97120c6c2f0c1c19bdff17dc9cb67017ed2064a8226203232c
Date: Mon, 6 Jun 2022 20:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654548899
