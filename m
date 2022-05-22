Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AEA210C
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 10:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653214499;
	h=To:Subject:From:Message-Id:Date;
	bh=FfqtCzImIK3UXwRxESDv15EDhANoJslWdQFU+xrcmeI=;
	b=b99ETe4z3FhEDxnIpUpn2f9js4iKa+Jx4+2R0Oo+BbU1RFEmz8s9CUjnlvkEN8Oe
	aPKDss9mt8L/yOd1D4QlzsOZx78Bx7t0Fvr/jkxa3ZfODLrv+jqAL08kkEIAMcPmPDd
	gr9URH7LSS+wQUcPJqHJSr/blslYIClQbqOF3NNQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653214499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FfqtCzImIK3UXwRxESDv15EDhANoJslWdQFU+xrcmeI=;
	b=Ecb7u4oix0eLLeTmzPYoG35ARFOqc0kiNFsIf/V+f6Iyai82nsn5kz5h4H+aFAUy
	10E5vxp7gomDtC7qFU+qNpvfxswe1057yQEfs5hD7WHl31JS9MiZgIwsJSutaeZbytS
	ovb3XOAt953iWio+JiFxuSn1HSmfbe7O7fsYp2iM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eb435233-a6bd8502-7e98-4df9-bb6c-a5846d2294a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94815a041b16ec551393af6bcb22d75fd096214cda7869ff68cf0cb7516825f1
Date: Sun, 22 May 2022 10:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653214499
