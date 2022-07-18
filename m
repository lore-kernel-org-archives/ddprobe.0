Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B8033CC
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 18:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658167612;
	h=To:Subject:From:Message-Id:Date;
	bh=mgCb19HDT3v9gBSMz1cmAhqjWw1VhGUF/xr6mrcvSfE=;
	b=fBza0AwJOmrKl645SvdupDlApD1bcj9oEeAiF69OH9rRaeHw+huHimSVAWvBNwBd
	MBd4QJbNo5h0OBQh2yGQMeR/Jz/BTwDNZV0lBDZDCclvGS0x9qVT4GnG7YUenrQ2mfL
	JSf4EBYq2OWLcNW7mhS/YLP59w936AkJMNZqMPDg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658167612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mgCb19HDT3v9gBSMz1cmAhqjWw1VhGUF/xr6mrcvSfE=;
	b=DTS4efQZnSQbrDNcK5EgIZDpucR8lo0BvcuGmVAm5fOlavWewLCRmONpejAAFACh
	oYUTRvbKsiSaQXtUrnYC3oZ8+SC7NrsfucgQxbgbP/fXPTsU6jXYn9q15fyQYfcxYRM
	EHQcwftKS454Mm1LLrg3UHPNs+tE5a14kDAJ1WJc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182127dd382-d20cf489-824d-4cae-9b88-a53f5fcd470e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c729a959b3d7086cc91527134823a9948b0dcd1f5b4010fb14829ff9c2196c9
Date: Mon, 18 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658167612
