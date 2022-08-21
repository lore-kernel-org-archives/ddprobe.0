Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC1D7B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661107852;
	h=To:Subject:From:Message-Id:Date;
	bh=4YKrbGr1YQ/Gi353j6XBso6jotIVMSbUjjGNeEV6bEU=;
	b=ML4rdcImL0qnnTqRB4K/moX4tHz2/AeA7hXof9XSd7Vtg13bTa5HbF3J/n6cz2Ke
	6Nyz4YayUBVUGWbkAxL+jrSxzGXWmlYL2R4Qs5IGXfjYkkrg7/Ow3ZhTsPC2Ursdorc
	elaMqowp9QtekEch3H9ngyRD7Pp0tiiHvX1rXmgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661107852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4YKrbGr1YQ/Gi353j6XBso6jotIVMSbUjjGNeEV6bEU=;
	b=M78Idg3K4eY8GddxOKYArmAtE9c8mPSp4U77+QNtZB5QlEMSsVZzZQ7yTDfGzHoL
	TLzIj+ifC8BRo1CRMwKz/uvKff1PkvsaTxHcK66AAYp99M4v4DSala/vDf9KiSvhNZe
	CeqQtXq/uhVJn7nfrkrG1+gOmJFRXiqXf9yKgLwY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c1be553f-7f79fd48-9ae8-4f24-8dc6-7dcc4a025a13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce413d1777c0c536140b91ccd8de8c805097524d89b45a9263d3793a489ba69d
Date: Sun, 21 Aug 2022 18:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661107852
