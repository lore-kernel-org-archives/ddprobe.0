Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF8C636
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 12:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654863599;
	h=To:Subject:From:Message-Id:Date;
	bh=C4mRGmAFyTeDCeGx6qaHD0jdtvaRXWqVn50jAXa3okI=;
	b=PKByo6sjiEcRKnoWs94ViuWpCTzkqKEgZ55mPt0vIxTnWKGL8CEcBuhssAU3SqnF
	SHMlWiUASzdBCTwSD4gHB9ySLf656wQzNl4gqFdZwPbrfkSslT0vs1jMowvJpkuUb33
	aVkEgdTow70n8r74zZzDUXMhcxF0IB27ohlyMB24=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654863599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C4mRGmAFyTeDCeGx6qaHD0jdtvaRXWqVn50jAXa3okI=;
	b=ExsV1nswNOfTsO50X31YUWQG3m6QDxcf5CnH19y8Kfd4jQwkr5+cicjFuQpbJgWo
	s+x8xrIpawBtvxdp5yk45cIWgEBjeTXfY2HnQKh1y3BE9Lr2296QdDpgHmIO4ocF/wz
	9L0C3aQ3Gq+yvXbO3oL/u2P5dxGgJSFopW07R0bU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814d8e96ae-d265fa70-8eb5-4a4a-8146-c243dc887aee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b933cc1084cd4ae67c4368d97b757d0e7fe0022b38b02af374313b03818a3dc
Date: Fri, 10 Jun 2022 12:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654863599
