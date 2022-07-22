Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A17433C4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 14:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658501212;
	h=To:Subject:From:Message-Id:Date;
	bh=nghtNIoW3Io+C5hIYc7jDGeUEMnL7mnOWnMIqCvQ3ac=;
	b=LSoCtEtMFXF9sE6cV7W9WAXekmBnAbVjPyWLa1Nn9DJc3rmHQj6v5CjqWeLI6gxB
	FspfzwcSncDXDBFnhewagGbwZVo7vGjdOsRazEsCDWWlaIc+7wGie9z/oeaRMySmHtE
	hbtjsVsbR5ayWix4FQuxzATqhutjJZrEHHzdmIhQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658501212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nghtNIoW3Io+C5hIYc7jDGeUEMnL7mnOWnMIqCvQ3ac=;
	b=O/0f70ToCCd0/rY+3/4mg72x2A3foBUNzLNlYXHgD3qE8vRxWMRijwXatOeh1Q+N
	KwBPBPdjdkpJpyy0PhZiuCO5Fpse+Om5hOfkggaMnHttRkUc3vBYefEO2JZ2HIyVCFt
	sq1hu2jQdsBBqnhbwNNKmge8Y/bZcUhl9bfWohNw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822660288e-0cfb4793-998e-47d4-9469-a85bec18e186-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc366b2107e06e0f049a5fadf457d43bd76bb6b811474df56719a2189744d963
Date: Fri, 22 Jul 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658501212
