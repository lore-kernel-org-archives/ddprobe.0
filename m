Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B8010F8
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 03:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652758979;
	h=To:Subject:From:Message-Id:Date;
	bh=notjylOkpI1nYTgiqaaZ8OVf6OCFYPyI8lgXnvKfQPY=;
	b=G+n4yEnlMm5FekAU7vmZzA1XzaMHtn1jvTTxbtx7fDgDZ9VS0bo0zT2AEeys9YuK
	rxB2259IE6BTVQ+v43ggGiHNSH0TcfE8zLfvPEMrb9Ol1sTnt9bmbaHCVAanP6hD0vW
	AEH3wXp+A9aHx45zpTBmEw2k9qiQ3dUx4y0GSxQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652758979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=notjylOkpI1nYTgiqaaZ8OVf6OCFYPyI8lgXnvKfQPY=;
	b=iEIAalGr++WEo2AifJ9gi9XrhFOs+JVtHievAZzscpP5HXYeDJHnUbXBh7y643o1
	b5OSoFjww6Zk+7UcXUEMcXIct3DK6Xdp60NJrouw4Smtij/BofyPo7HL1hSn+VFN8nz
	NZ/UNJ2H+aHQPAFxF40uQtlDNrdnrx81U3qzB2O0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d01ca31d-2c84d814-98d5-4d36-bdbc-4c7541e80e48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77223f2a270fe30ea504b5f32d9fc374f640d3ea6dbaca764726ba349e507b35
Date: Tue, 17 May 2022 03:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652758979
