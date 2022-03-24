Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E531FA1
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 20:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648154038;
	h=To:Subject:From:Message-Id:Date;
	bh=NLBX7dF3XWfiyuTEoiRLltZYpNbn9GqOGwkG4yaklYI=;
	b=f/riEyTvMmdSUsSP4XPjIQnJow0fFt4sfNQOF0XngVTtcxEcltSvK/y8xsKbP7f+
	UvAy63GsK0UH0o+mi0CkAob20NR9ruEg6+xefuekyP+xrOJbWdmftP52ogKSEJsdcLE
	BaLZXy6UGGMLebeGs8yhhvp4/DZFkCXHyGZcfIAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648154038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NLBX7dF3XWfiyuTEoiRLltZYpNbn9GqOGwkG4yaklYI=;
	b=eulkdx67S4VKmim3WcRMPGkX8Euv1wfOaZU+OruHaLYsIPsu3vxG0aWFAvGgFRAu
	4181X/XXVxjVY/N5C0w5oIJt5GP7r9bPDUPnjMXds16Tt7CEnjh7qjsI/FmgudC4f/X
	kR38VD3TLllUKCNCZI4nA+ulMZkuhkVMNfblNYHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbda2d010-99dc2ac0-50a7-4479-8575-e696378095a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5565a971b2f90a4e331b775d3d52555d7113648bdd1ceadd60a576850bee91d1
Date: Thu, 24 Mar 2022 20:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648154038
