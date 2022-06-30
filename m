Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4BE7469
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 18:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656612412;
	h=To:Subject:From:Message-Id:Date;
	bh=/+DjcJW4Nlo3TpXwnQKMC0VKbu03Z+csuJSTMmId5Uw=;
	b=TDFViDew3QJfRDMaOqnUF4JF1CJwt4VYt0tAWZuQTRWU2UPMJaCM3CjECkTPpqlF
	wJQ4evErZrVtTRmv8XHRHfbyYRsZ4cu8MD3zAkexNkdGDw1Xa7Q6ASxtqvkDRlYbQDO
	7b4pbtbqJZ729p19FyVGuj5zFuSzEULm01Kc3RmE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656612412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/+DjcJW4Nlo3TpXwnQKMC0VKbu03Z+csuJSTMmId5Uw=;
	b=Dk47Ii4lGIxIfwzdQFJsTtBMvpKsbf1KfelttWN32KsK8dgLVUBVlks6zkm3NY7H
	5D6Fqv6XRC5CwdXQPRATPrHQxyeqfS9QBN5/ZihnTZWa0IdcwTCX5khv32eQA/Bofut
	GTXE18qFuVshPUXlIJwzGSfmZUITlQap8XM/8LVQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b5cb5b73-f43ace06-2937-4bc5-ad65-94eb1b7f137c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cfd689fb6f5dd00174b9b4173406a6edb18868b35795413a456b3dfcab53e2f
Date: Thu, 30 Jun 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656612412
