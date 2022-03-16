Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890DA2F5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647425184;
	h=To:Subject:From:Message-Id:Date;
	bh=and8RHLpq+2cQyLMAXu7cZoyPGywgelgWriuQZhDVXc=;
	b=gLiuwfCoB9h2PPZyTNmcLPga6KwpU7xZ0/MKNEnw3Eq72nI1ylRgVvLbN1D62EDT
	rSpvM8n8+/WkapGsVoVYrhW3R/20VvKmHsGDGaoKo96bpbnWy3E6FtekKk6BhHRaATq
	9GY1nHl3Y9DkQBEuZsA5aLuhrVU1kAhpe2G29+uk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647425184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=and8RHLpq+2cQyLMAXu7cZoyPGywgelgWriuQZhDVXc=;
	b=JdfimU3OZzefjn4v/1CEDeNUs6Ua0RZ/1ckW7OyeN4rbx2g6Y2Hg/zzyGpMCPoKR
	QWRDag6erjoeDVUaSMY1EHPCQDa2qTRpznGw8MDBdPiFdLliugnosB/Aag0ix4+lkcu
	8Rbz7sNFotvsHkl/if97Rvq5Uvt5qEaTJpcYamrg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9231644c-5ad1daef-01cb-4a2c-8a9e-ea66eddf49ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3863dba595e6836eb80866bc220fbc3e3b7377ffc92b8f8ff96d0385f3dd2cb2
Date: Wed, 16 Mar 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647425184
