Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7492D2563
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659723052;
	h=To:Subject:From:Message-Id:Date;
	bh=a0Q5NqmUQEnybTs48Hm1V6/oC7CA4fMp1L6VNRaz4Xk=;
	b=S4v84iC7I9m91RKbnO9ijkdOC6SjsAruwct7ogy7GrCKn4I8QLxy4Gx0abJu9wxU
	fa+01qZrAT5R6EFYE30+uViOErVQfRpM2Yt8xePlFbjfTPVfTg4CM7OuZYsTgxs2Nnk
	yl16Khj5obosRm78M/gInyd3VOjjD+CDQ2DLk4no=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659723052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a0Q5NqmUQEnybTs48Hm1V6/oC7CA4fMp1L6VNRaz4Xk=;
	b=NuwRd3s2I8VbDmZo7MctxTKl7F9qIsGYcb5ialQ+WZV75Pm0hNqZzlhEQ1CK1kEh
	cgVK7fQi8ootVe8/CX+uXk4czZN7yz2qSTeWLSm/gGGODUEIkMGbwsJBTnBsoeeEmLk
	cjaS7mbLIjLNDKWh4t925L8HnLg3UAGYy3EUdXR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826f33f648-6b1631ab-34c7-4da1-a890-970f58d3f375-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e6a1b289010ec84621bf6da52b79a885176322434e2485e9cb27621426bf82b
Date: Fri, 5 Aug 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659723052
