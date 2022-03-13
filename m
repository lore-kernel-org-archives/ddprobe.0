Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C7B8A23
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647210984;
	h=To:Subject:From:Message-Id:Date;
	bh=tDbYxB1OGU9P+iqIBkAEmOEFlFtcuenMMgKz1Qoe7/8=;
	b=T+UufmKNzZ45Bk1RFEX9rNXJp7e5P75JMuef2E/2PQdAkeXy4z5WZMBBQFN8oUYh
	NaQ6Atwq+CFbWRimXWtqRA6YD6kd80tFGcENThDXpBd6ZskPdQFSgErGhAEmCS2fcvr
	w83seXbYH+CbhtxRJSLracHAld4qo63BrJxG6MK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647210984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tDbYxB1OGU9P+iqIBkAEmOEFlFtcuenMMgKz1Qoe7/8=;
	b=WMyAYPAW01ZdMzTvP/wbC2nKMdV7mRLk+EH+LlaZDAzOo3iRawNl7CkiVwElKfPN
	R13AnCwO5OECiUZgvwPwOkmyG0upWEPL0J3gLgCk9m9fteH1t1dsD/R056x/brMs3JP
	q+dRiO0I2ahHw6arthPTecq9lsDUxPFgPilFHMHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f856cf56d-7299943e-b5fa-43b6-a0eb-3df346f9176f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd849e40835548ce2b97836dc559afe9cfc37c6681010cb8eb069b1436dd959a
Date: Sun, 13 Mar 2022 22:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647210984
