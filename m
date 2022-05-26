Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A0F7C
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 10:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653562259;
	h=To:Subject:From:Message-Id:Date;
	bh=prXici64g4eK2hX/N/G052PMbGBDEZ0EnUFz/RyN3L8=;
	b=O6rO4ElLSM2d2OjgL/dYMB8055SnJw5zSIOMy+GOJ5ndcRKkGEqB8Kt1sAzz3RQU
	AftTb9spDtDPxlfBTI19BxoWy2PCRnc5IhlNjwb9oru/Jk3TywXbssDvsdbgsXeFuV3
	2sQHsaDuKKj0cBBF+2euCsbpnlbryNk1YuEGw7pQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653562259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=prXici64g4eK2hX/N/G052PMbGBDEZ0EnUFz/RyN3L8=;
	b=VdbiuKx0HAtlo7eUJmpl3POlpKTCj12ilBcJmsCs33cIiiAz9/0v/ELAfDFe/j8N
	h/rySCE1g6Zyp7JCQ1GotHsoAIOVquZaz9s1VSG3D08rN6z7fvropplCeeXqwcx5NqM
	tk130f+aXOLmiX96XW6JY1ktYrixDxXXfna6d6HI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fffdb70f-2ca10ffa-f6e4-483e-a162-a3641d9aab99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d230d96dd14dbe87cb5c37834c76eb91376080d2faa0615d138b8bdf50f1eabd
Date: Thu, 26 May 2022 10:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653562259
