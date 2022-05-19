Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F95E23D6
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 12:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652962679;
	h=To:Subject:From:Message-Id:Date;
	bh=erXm1yMziNX4LenvHQGo5yr9U2CjGFhivnuifeTR43E=;
	b=DZyRsZ6qbpGoD1O4eILcYToddFZeOxOGLhJ1Dh39VYTdnvclmqe2uC/2GVPUFRuM
	qcor91agukrqOuhYnx9rwzkmlIvS8Y/FGl1BuSJY8Y4XGyZzTrbAt2cEaaYfCw7HCdV
	cFoW1JZ1nbRU44RrCJxTncar1z5zQujaHV69swlc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652962679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=erXm1yMziNX4LenvHQGo5yr9U2CjGFhivnuifeTR43E=;
	b=XjA8LzumfYLMCR/7AiO1cfLAqrU1s8ucWHwG/man4kck7/aSnn17kOlPvKomYVzE
	6PNOLJylERvfXGQWOiIIhDSv+4f0wWPsOWaLM3UnD3JJFY4aHZEPqJPeqQUIZPFRQFz
	juvRHOfnfhs4M6hUkjEjtM6A3lkl4nXv/REBHWUc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dc40d9ea-65ee57c5-7b36-4c1e-b125-edc71606eb1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4df050400cb08b9fee92679bf0733baad44fad5a5da9dc99cdce1b0c49a055c8
Date: Thu, 19 May 2022 12:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652962679
