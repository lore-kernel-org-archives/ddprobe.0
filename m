Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 717CA2F25
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 11:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655465219;
	h=To:Subject:From:Message-Id:Date;
	bh=HO3s379eKz7gBBab1xuLua5MYcmYmVL6WBufCS7rys8=;
	b=CiaBR9dYBmD/BPDAQeyo8ODiJygFm5oya3EHSVEgD20avlY5WPobI8die33BFSIO
	KGc+Jy2xo2lGtJTCji1zWRh5Jq+AeXEZwRATBixmlfsgXUomv8/tSRlNP/uH/sQhGaK
	ksy80krXpAt5+4S6xJDLDADCDDhLDal0CkSK84qo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655465219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HO3s379eKz7gBBab1xuLua5MYcmYmVL6WBufCS7rys8=;
	b=aAlAP9XSgEtxRqJEEEVBhoYFHkSPH0AVKoPnLhvaa6r7+/7oHWMRiMJZcPteCdLa
	kx8micUEhn67DeSRC6Ug1cCgfkFqjayH/JuV38p8ajqUNrLD97xE9J1ZdQGw0vQV6+O
	uV7V/hAEtkIchct2lxr3X68SS7v1faSz5P7S8xqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181716a9491-3c2afd8f-ed37-475d-8efc-f7222b1407f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b987e72869f911d3bab55dbe134242787e6fbce957d860476eb421b0617d3f35
Date: Fri, 17 Jun 2022 11:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655465219
