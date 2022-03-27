Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345B87E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 23:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648424698;
	h=To:Subject:From:Message-Id:Date;
	bh=vtehe3oaf09xYZLWNQmu2rwu4TGbuCyOxLtpwUSOyAs=;
	b=G3anXa2s5QNE004qILrF2Zxp/ahGg0F2E0gHwbBDzhUFEnzTRmbxGXPQlGIapwDH
	O+N2GjLZMaH3xEwkdwnRExL4fBsu7o2l1a94hY3KBUHrtUviQW+OQ8L8n++0iLRJI1v
	P1HPQfxKXdFEarSlK893GXwouV7SE47/5uMILbto=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648424698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vtehe3oaf09xYZLWNQmu2rwu4TGbuCyOxLtpwUSOyAs=;
	b=U7BIdJwKhuUApXwLIxHDpr6t69UFhZhakgrtXsx8EgHqfYcKvioZIxPIXldNViEv
	fyGSRiLCkn4LW5CAa6Fe65JOPLFy006uieFtX0LooBjATHfs9+i6FhxCqdEqbxrpuFu
	sAzSt2dB13lXX5E/zhnlkKT5JZROM0VDMHRHhQT4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcdc4c1fe-9cdfefbd-e32a-46ce-865a-08489c474a3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 048e54d353407c0e078c8f73a841c68b5530125e539c302f644538244958f663
Date: Sun, 27 Mar 2022 23:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648424698
