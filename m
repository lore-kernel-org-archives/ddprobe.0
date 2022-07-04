Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6314A0A
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 19:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656962212;
	h=To:Subject:From:Message-Id:Date;
	bh=vSzmp5HT3cBGfHutqUgUqWKUtSihKlA5ogRvaHI5BBY=;
	b=LrT8gw2bcbSb+kbWMggcooPACYPxxMfIyozDuOC7TBviL/Xb2ivEoTNpplJsLDge
	3at8NWclz+WIfT2Ef+obBOCWaqLAJE8lyaYGkTGbl0+sonDE4U9Us/zZsJn6Brq73iH
	vUS2AuNmyFhFisUZzobH2q2Ca8wTCi4dhPLsjbRM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656962212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vSzmp5HT3cBGfHutqUgUqWKUtSihKlA5ogRvaHI5BBY=;
	b=b4kb1UdvaSuJFdRTv+qbQ0YKVG3vI48IFqPLcNVLkgzRptFea4U3aLlLHWG9zDoW
	XP3/Ku1fFdCGp5D0wYbi8DKbH0GReAGA6W56vAH0QQ5zbWdM8Lz8bu7ou5+hind98pX
	RMz3lcVw3zvHixKgNlZhFcXqj9SOA1qXio+qn9Cc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181caa4e1f5-f829d5dd-2be9-4ace-824f-61cc106ff93c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d19081b55dad26549c79a44c4b5730b24d377b6ca85825b0f7243aa45f10cb7
Date: Mon, 4 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656962212
