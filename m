Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FA91366
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647235284;
	h=To:Subject:From:Message-Id:Date;
	bh=jH/qJoAiBl0patkgwa1ptGkD2IBZ9iXFnoFiONukDIc=;
	b=Nf85VeKtDRWiGAp+97dDqcxcgxcNfEKz/zTF4pzxrnH0mHPRJRi78eG3GVeCk12U
	RvptXPuy6qKASgNp4VGHqorPCOr89oKLrlKmMEZYSnkAvUzmOvMtCydb61NNr2Wioaj
	cknk+saiZY2pjRIyrnhtatVanLVfvoJhnwJ25YbY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647235284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jH/qJoAiBl0patkgwa1ptGkD2IBZ9iXFnoFiONukDIc=;
	b=Tu7nuSG7BhpVNc4HgPpJNcvyCBb/mhZ7aCYYIfAm5Wvq8Qz8ZAbXBJPNFTL+/Sjz
	nqrovhi9666MQkDzfLo4ub78W4PKF0bAq9EF2BmnmNy7DpPxkT6iiXKNBwIHaqTftxr
	ccdfzetkfeTkFUfFpSyk4Cl3Mrk5gWgKRwgC8pAU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f86dfbefb-a6cf8a45-a8b3-4645-8d05-3240c3b42d39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4eaabe94e33b12b1ee38f68163b4af63fb57b6377d2b008bd1802f1123b632fb
Date: Mon, 14 Mar 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647235284
