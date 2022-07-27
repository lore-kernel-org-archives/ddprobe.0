Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764A2A20
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658892652;
	h=To:Subject:From:Message-Id:Date;
	bh=mW8e2fnFcJ3rQIilhaoDFxv/w0mkuHEoG1Scugy/UPk=;
	b=cC4A9qgJ9KNiK418nmZLzJ15qrOrYAAjeuhWdIeuYb4DIcxZoZfKInjbkkkGY7ee
	mD/BpT2zC2nsISvC37GHB6oNY41JZfQHeVPPpixKQ89FXoLLPilqtNO+Qgz7zcXSqsm
	sqhYYl+fHjNdrQ5ZfjY+En4DM/kFtO1FUQWC4xDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658892652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mW8e2fnFcJ3rQIilhaoDFxv/w0mkuHEoG1Scugy/UPk=;
	b=GhABiEckDXaXHHIT0F7XEkapqKn8hMc/0A7r5XwK5vitvXVAxV3CSpKj0Rr3ZPhM
	oDQ7iwHMAqO9O8bU4KXIh1pV11vOC0tR2XEtb+NvGAVOWHfFh31KFMbwjeR+6tFF8c0
	J1m0PI+CKVg3xAjpcmofLvCF7LFIQ5wy6KZDkV3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823db5104e-d421262a-1fde-410e-8e28-4024dd2f309c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02ec93a7b57a7643a159627f45e266b4f07aa0104504e0b2c3a1d081d4874241
Date: Wed, 27 Jul 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658892652
