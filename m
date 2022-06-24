Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E54728EB
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 14:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656079612;
	h=To:Subject:From:Message-Id:Date;
	bh=wD4nhGizkW2GfDItBt2BziIp3cvMN/bPC/FuwW5UGfc=;
	b=cUGNCPsueN9Yf1NxDkNHCRg5l6D2mG89uzT+ibu0WSbZ7k8sDlA1YxnziIiW/QoE
	zTU7VUrrz2dkf6ivaVL0XpKX2D/igRLzFO7UcR43sIptR2BgG4g8WKWapQLrd2fqqMT
	WucybY9sZsIiF1WR5kiuUzwcJbjNU3TTuZ9S2eGM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656079612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wD4nhGizkW2GfDItBt2BziIp3cvMN/bPC/FuwW5UGfc=;
	b=IdCR6jL4wPX9WrFqQyJwCk9eEpnM64v1UspRHDfw2AklqHsQgjgkO86EpkrGEA4O
	P29cIOOWOAzGPkp+ZS/8lgCe40oVnBZ8R5WoX3cYU63DBSUVNErBiMflCccc5z1Wk9g
	r8b/wDTc+ewnkDZNH0W/LGbXOULnWU9AzWXlW8IU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018196097954-97a90dc7-5d8b-49e1-a492-db70cacb53c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a29390ebb03212ba27118c7f037bdae575879c8aad2fa62207f9edf2ae96830c
Date: Fri, 24 Jun 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656079612
