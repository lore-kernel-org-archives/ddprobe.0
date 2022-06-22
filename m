Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2415E139A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 12:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655902259;
	h=To:Subject:From:Message-Id:Date;
	bh=ivt+mnX3qPDQAYRengDqHCEgFbyQ2GfnI1+OIbUOPnc=;
	b=TzfPOtTHyZaizodbFQo3lcUKInryVBB1dhn8LN+fsrc4zczAzX2I0HJNaAiDRo/4
	tjElPT8ShV6p3MclVl7akBv8IUaCGNnUpaBc0ZTmR+HlbQwjPvLrsiU8jCp4u3TaXfH
	oiexbA2aKD/SAQ/Qsxk5tFL2CzDmQIUfiXxKGVGI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655902259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ivt+mnX3qPDQAYRengDqHCEgFbyQ2GfnI1+OIbUOPnc=;
	b=OZ++W44cv9dKkf7NCCKkP3DG8unF9YUXPmPklMFjsDP3Can5PFd2jddRwWTI6SM/
	0NmZnEsYvWekmtwvDPytFTVBIo7vaYIPpy+QoQmDtpHaSDnPzc1NCe4oUVMhwyRPD0B
	Rxl9TRAklPwqmCiMznovLj6MU7yCvFekvIFkpFtY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818b774813-93a906f3-f3dc-4611-b299-53341f63dbe2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b69936cfe4d37aa6ef1ebf75db7842b32a0c7da27cae85b4ffca43ebcc6bca58
Date: Wed, 22 Jun 2022 12:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655902259
