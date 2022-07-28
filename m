Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8251810F6
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658986853;
	h=To:Subject:From:Message-Id:Date;
	bh=9K/XmYXQJEZC6PH+zMObT7OQkK6irGWrrvYR+qk57c8=;
	b=B0wGaeU3et4hRBWvDVl4siXjjQDzt/TTozTxKfMWoNQo7TzTfXiaftF6pIeyNxnc
	CI4eypot3SDEbnAC9dIV6LiVQFZ5RfktXckyD6AjDv7UJnvgjlkhFH1AzNk/wZEN3iJ
	ns7FM4jEICgKkmVIJaKWOqkgtgiUOJ7jOCv4Yc/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658986853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9K/XmYXQJEZC6PH+zMObT7OQkK6irGWrrvYR+qk57c8=;
	b=gDJFqkU+ulRhv0GdtWOtxPmBusLt3KXS5kt+1UM/abg87zFAvnNcGChhNFtFFU42
	aiWl4RG7pZ/4LFH1AR+NOKNuMoekEOEp/fDJsGpCiAVW8EeKnJviBkiSrYuH4hhnruF
	1nJaKS7Vi+qm+r8FSmpDhT1gamsAAsc0/yN+v+rQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182435270f8-0baa4346-dd33-4f6d-a62e-c87a1eb20c9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4250e959d0eb82d112f6bd386b339520abbdca0bd8b0c651fd6ca24226c54f4
Date: Thu, 28 Jul 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658986852
