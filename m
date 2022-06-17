Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F48620E1
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 18:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655492279;
	h=To:Subject:From:Message-Id:Date;
	bh=nXIRVGfwU/xAeQ7gz3JF9qvJnuDTQB7IZVA0D/iBxGE=;
	b=JPmk8CEd+AroreISOuRWLrOyu/ZYO1R5z2JHPvkPMefDmVyeThVTebUqoDAX/9GB
	Im82DaXhcSNh0LMPKBFotyi4DXCLjisJHGNS9bWxREmKEFyWG7umnke1X4TOoPrYqRD
	cPEeJXNoYmrgmOC/2l5+2fDwDVJ0ILMqST/Cehto=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655492279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nXIRVGfwU/xAeQ7gz3JF9qvJnuDTQB7IZVA0D/iBxGE=;
	b=AA4OXrMv9QmVOZ+Y6keHylY0k6JJZZL9bG1HGEamgSjdXoiQeTlJ55VgwflUw2U4
	lLqEOsncdFvzULsCWH+IYJFW0vhQA+DfdI/XzQkOXuN/BZAIFiUymXlplNvdxarrf9k
	S3Kb8nfidYn60cvRQ0FkW1aeT9WHZxY1/1kkFk0w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018173077bd0-5a4be945-99a2-46de-8133-2f6e6a2282ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33232484b46fb09ab89a773468c35defc9aad1e53498e384112915a9bf96a36f
Date: Fri, 17 Jun 2022 18:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655492279
