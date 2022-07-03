Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606833C0B
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656868612;
	h=To:Subject:From:Message-Id:Date;
	bh=Sdjy/UwQuOKjOS+2y3X56Pi/EWUqlThtHh6f6+OgC3E=;
	b=EqOWw2Rf4su77EXB8uFcElQ3SiRA6fYmZoovVOkQD6plwpKwGnZ/WBypnJZmpw28
	YxBaFQqo51+fakLSh543uBuXtYr5r/gaLrjemITp3/38Mu0GBXHQDql6oxnspuZ/Mrt
	ZE9kbERt3kJbLIJl7KEn2zRBROA/ADjYJdPmnLy0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656868612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sdjy/UwQuOKjOS+2y3X56Pi/EWUqlThtHh6f6+OgC3E=;
	b=FFcP47FxBr4viXPvmktE11PA/0NfVXKSgngMkXoOwQGAkWLnpMbZOBenMS1J+b/C
	9WA3LPt1LwYOsEA1EO//FcNaOfZiMhSJWCmlFoRzLp31p3ncJB9Usp6DQo84qSfvCBF
	X4MrUbbTNrWD1CIj0cxGjiCzTnaBQ0bFG7oIrTrA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c510a92b-4ddca081-b381-449f-9f34-7418fcd0f7af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59868de93ad03dae1be3b3f4186e17cf11801726200e5b664d3f440ce4990b1f
Date: Sun, 3 Jul 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656868612
