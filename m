Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD347A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 03:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647315385;
	h=To:Subject:From:Message-Id:Date;
	bh=gMIeaQc6bnObILtkWoBQ43p4mMzYWLjjM3AavtOxQbY=;
	b=gwYr9w3WQ6bHqyYmlBva7pnZwoSaUWOhga9tDyWw5ILgRDSZx4SecLcfcqIYAxSC
	wgYobrdV0UY90FGXdtMzJIoyG09rHf5jByAziLWRPVvQj5w13vlIg/AGA9g/hfLBDqn
	emn9ZTSOXVTmkzqo3ty/lGscfUYgT82zV2gUuHc8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647315385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gMIeaQc6bnObILtkWoBQ43p4mMzYWLjjM3AavtOxQbY=;
	b=FiFekiv2v1zaoa+KnoGyOF7Mt8eXrod40uP2uhcKBEekj9hv8j8XplPEsxfPOrqG
	edjzkR3/gf7nRXvyOx72UwgBPmzhfi7enJT0MWHohxaqSls35Nqk1j0YAThbbKspEN3
	hoHAF3jzm0GMtmsnWoc8JYeUwEels4ASjBosvjj4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8ba5f9b3-aa670438-0378-4ee7-8084-3fce925e0c8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58cdfb7da3ebdc395b7c5433269f8749b7e3ef46224e9b32c350a9f9136b305d
Date: Tue, 15 Mar 2022 03:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647315384
