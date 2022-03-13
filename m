Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8467A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647129985;
	h=To:Subject:From:Message-Id:Date;
	bh=fAl4pbK/OftloaKPSX8xQZnOJDTNU9g1rhiiWDubA6E=;
	b=fyHQrLT0Ax0COl6ewRdYcPn/w/115raev2dgps7aPUhTamrJ8RhV0Nxrf2O0tHMn
	E/0PebTihcdTnCreFK/2g6vVtEx79GN8lRMU+1qBa/CwBp/GhRmqM8txozu1c6H5tkp
	lL6o1Q9uXp2TTE9AdUt8o2doQEYYOQGJt5S/f+Xc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647129985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fAl4pbK/OftloaKPSX8xQZnOJDTNU9g1rhiiWDubA6E=;
	b=dX5/F1gMCOnBGJdG1nNpy+h+zozVnpbb4/uuhuRnNBzJD+h0Z8kUrYlAHJmTsW9N
	3J411b4ptifzVXAY+tRnMixrhUXjwsoUPNJX0Sp4QCmWtDvTltSBtzISRlbjdqUq2f5
	rKMUEw4OrHUrUOQtFI3gsGMVMeoWCJxg2PCtiI28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8098fef7-4e7e3600-b8f4-47e3-8374-4fa2bbbdb25d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03671912df8bacf99a16e9824a46755b2e829ee4d5ff22d255f13326476ba521
Date: Sun, 13 Mar 2022 00:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647129984
