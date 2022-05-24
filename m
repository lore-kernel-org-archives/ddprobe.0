Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310923D8E
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 21:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653426959;
	h=To:Subject:From:Message-Id:Date;
	bh=aw9t8E+ZfvjOWhxyxugKYxzxKqQt304TJNC0QxMfHe0=;
	b=T7w75/VyKRaoow4iCFqwJnUn1fAv1zfljgBDnvmP4lweeUkAKAvhRqepYJY2TIy2
	xtJMRCfS3X2nYTheGPYkCkg9V5rylOcA3i16I8yc3GruBdg3Qks+63oU9bOaEAWYPyw
	SDlC7dAai7N+7Pmium/DWKfCTjdR487h39lBL0Zg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653426959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aw9t8E+ZfvjOWhxyxugKYxzxKqQt304TJNC0QxMfHe0=;
	b=SPtZoIpap+a9UgwxiSxH2Kzp9oo6r8+/UxqEwEk0ko8y5FJ8iDNP3AXRr2dlYqGO
	cFemq5tDQTrE7FvbSklSInIIcY/OZWp9gvIOP/KM/1IsfDrJVaWRYFsJoALv6BvTH79
	zd8q3iBWPfwrpk7AmYRdjcygphADJZ3czCtSrM/w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f7ed33f8-32a52cbe-a397-455b-9593-4412b3cb8ec9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01514241c092266acafda307ac239d905fb0ad32b2d937617a487317837b3aed
Date: Tue, 24 May 2022 21:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653426959
