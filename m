Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87C8A28F9
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 13:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652277359;
	h=To:Subject:From:Message-Id:Date;
	bh=4fdiJoQfQAE5VuSOIsd3xF3BqJA3GU808BWEbaTDvLA=;
	b=ihkeGOVsEm8uOdpv2R1WcKijocIMEktSQsXApB4pac55GMcA3fmiuehl7WMoSPaP
	mneQGDxiX1sKIOTm820eBAUAosa6Zs1dRCle63fl05uyf+dRSYmD3X8FL9LZC/GKIaD
	xHfn9thDW20oijhS9C7SV0EBirAs8BNSEKf6MpJQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652277359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4fdiJoQfQAE5VuSOIsd3xF3BqJA3GU808BWEbaTDvLA=;
	b=Bl89Ck21g+3DTglhKodJwscRnZveSEm2yc8+T4XJQ0USd2zHi0h8LdzaIhfhhOUe
	PjR2CAoDLLiHCWkMKcqb9G4gRZnDd3LdfjL2/9CKBDo0vpiHHSD8oABqDDlF3P4aMqP
	Jg9koae1XgwEva0AJVxEgDQMe+iaZji1EhtNbN8E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b367b306-566856b3-9384-4c29-a299-30cd2c2e6e7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98359b7f049e1549d35178c8e96d85104a97cf44342875a37ef0b3662526ceba
Date: Wed, 11 May 2022 13:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652277359
