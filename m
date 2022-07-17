Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E352565
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 15:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658073412;
	h=To:Subject:From:Message-Id:Date;
	bh=SdlnCgr943WDrdNzztUgPHUDGyKXIs6FW+2/s7TBzf4=;
	b=JVmeKVo6Z0l15c3p+lzM2MdPNE1njGzqwdfOF6mYHPtXTjEsrhgstaYND2da0jHv
	itS85ABWa5CaT1U/MiVdVPHXVjsXUMaGh5sz8ikyAHXqFu+Il3unO6yMaIrip65HM4t
	IwVVnG/hr8moE9+hmbHd81pkG7OiOLGQsJlzSC5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658073412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SdlnCgr943WDrdNzztUgPHUDGyKXIs6FW+2/s7TBzf4=;
	b=jgBZLoOeFisjUJW1jb320kHGrLk9I49rgSz55Qr50vCMPuySCOZ8yOv7oqwCVOwL
	WK6GhM/So7od+y4iILyHm7yyR6JsNDj4+OFxOGHq3Ah6/ScT6vfTaahdgp/jcgWnkfr
	8+WUrITveh5Se4wzz1ZyQwwljtDXjxBC6yCEDWiY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820ce072d4-d4b6bccb-581e-4b86-97ad-cdf85149b898-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a3329b2514ec194b94604d5f982b82d1577033b490f2f321360cc3909da3eb0
Date: Sun, 17 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658073412
