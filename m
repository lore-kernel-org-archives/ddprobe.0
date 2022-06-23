Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E321B4697
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 23:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656028012;
	h=To:Subject:From:Message-Id:Date;
	bh=wU5MErgLjxvYbfDI5Ujc+gQBZv7Ydqpv86pRjhGbdcg=;
	b=CzJ/FVEZ1l1E/SNi0hLB4Ch1vL2OIPcis1FuRlEHyJEg3nWt7sjIGlKXCDlE1IDu
	kBVW55Uw/pik6FFxQlW9pIINxrMQdH6x1AKs7DVGwWtXhujlPY/HPKQixFEJo3lkk2l
	wkh18yjSVWV2ny1qP4DcQaZaW8EefYtGZsyqPPMs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656028012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wU5MErgLjxvYbfDI5Ujc+gQBZv7Ydqpv86pRjhGbdcg=;
	b=edHjmEzR6zIsC4P0sxdvZOGVPOhQwGU+0+k+lfSM+76K+wuxzfQN9PezFXhJE0rq
	avBoSfFv3qDqbKGhLj0Rh8R6GZRiN8ybtIJUxagmVSdbSlGU2nbfT34rJrLdV60J5Uk
	KB6CT2BfjtwqYO48uyi/vP/qByph2EJGVI1c8w0E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018192f61ed6-2eacb871-5cc7-407f-b3cc-c82849d531c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b5072af2837e8319a60ee5ef5b4d8646b8d7e26dc09f198febed01f4c47a057
Date: Thu, 23 Jun 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656028012
