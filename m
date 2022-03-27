Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DE17E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 22:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648421578;
	h=To:Subject:From:Message-Id:Date;
	bh=IWErPKE0zFSLN5HnibSA5+1F4VQkejmipTOif2lcP/8=;
	b=iHDVe5i+/KrSMtawCgaHHXW5O+HfF9R05IREye3nCdCizL7GAe4rxyvzeJDwqNTt
	ltxhva1QydMA54rPqiYXFCNvcfpAaUkiiA6yO+yEqIoFqoawltpiTxGcF+Dj4syXBk2
	gS5dQYdVEoBhISe+v8eG1yHkUHdR/mEG09/I0XiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648421578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IWErPKE0zFSLN5HnibSA5+1F4VQkejmipTOif2lcP/8=;
	b=Fan6IGiI/vv6Y5sJUHwlpTXMW5fhAM/skdBsIq2giFpQY5XL6UPjkIx8tH5GcUuo
	wRKu5KiShZwNHZEohy3J9EdO1gf1rk/Rpg80JdX+d5rd8YRA8WxbVH2Zk8p1OEMaiVB
	hRCnZn3p0KqyCnBhAcUsUvy7iRw7oKFx/z1blJlg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcd952631-9a6d5469-c235-4963-b0f2-e3c6bae8f8c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c57e36d1ce741cd8753c15e24855ef0b54f5b3e88915f222f7bc674f52ff6acb
Date: Sun, 27 Mar 2022 22:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648421578
