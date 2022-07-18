Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09010A46
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 05:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658122012;
	h=To:Subject:From:Message-Id:Date;
	bh=T4SpKzksu0oIsnmljmE0WSA/YwnxcT4fzTUNIi3yAuY=;
	b=C+fIFQGlOIfA3rOEypOHaRZrWLqJh7aOlcAk/sl23vHqw7wyy4vDird7EnkuPeLz
	geUO+Vq7sgEk8rR1dwlr+zI03wsDzwXb3TJuAt0eG2ggd0wMkHfn2R3XGZTrwfSNYU3
	+X2UFR+f7L/mGzh7HKYlT+NLzAXW2YcZudKyajmQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658122012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T4SpKzksu0oIsnmljmE0WSA/YwnxcT4fzTUNIi3yAuY=;
	b=Dgsm1xixn1WBjZB5lIZPq9IxhM9E14HbH5R1xEainkgTkv9z7d0mVXH5Q10+cj7k
	zwUJYGyA2T3xNSbH375pcwRDEqkOVxEd0rNKv176CIV0If21lcVki3by6lEdAC10uxj
	8mbq+l7wl83PThgZbKnivhLEvX46B41biwYshdWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820fc6067b-73f041a1-ced6-4796-9b66-bf6ad35c92be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e4c61274d2a9f2935b7b025ca43d06951bb974030ddca43a6e8a494e9da41c4
Date: Mon, 18 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658122012
