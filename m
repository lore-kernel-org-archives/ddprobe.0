Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9492FAF
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647415285;
	h=To:Subject:From:Message-Id:Date;
	bh=raxekYIogENU03RfXSdjSTTwbF3OcD2g+2LRqMR4M80=;
	b=kifmbDszyytqLpDPddGJD9El+rNXistkhFnfJQ/Vq7BX1fEu/twKjYRV7CyBXOqt
	oc9vSKvGQI5w6NXBuZDxTcFmYGKxbrCS3v7/iQmkSx0axbAjA/71zSsDQKYF2OUTFIS
	mAe0ePbNOiHpQI+xs/UEcHROPzoW9OnjP2D0C4dU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647415285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=raxekYIogENU03RfXSdjSTTwbF3OcD2g+2LRqMR4M80=;
	b=NTCzGIdy8sTrR34hPXkRI766xpPQaTgV0O1tfY630u295pDxrepHgPblNTpG8G8m
	wztGV0DM1ZrKuSzGKHmsreayvaC/tDvDKN672Ps1EHDKW1K9NmSqSqVgUhersvWKcxM
	2Rp0stK2GgT6J2d1JPNxebDEmYPbOQSDKPCZksGk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f919a53e3-ef6bbd4d-803d-4635-bd3c-e48ad6112d62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81ea85db7d8a6b7a29f034f327dc0a821936e4cf0224f43882a3d85702b0bdcf
Date: Wed, 16 Mar 2022 07:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647415284
