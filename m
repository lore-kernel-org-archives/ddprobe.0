Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9EEF7A
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 00:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648083598;
	h=To:Subject:From:Message-Id:Date;
	bh=GJEi9yuFOsTwf9mfEKOs8MQg3KzPrUWumEJ2KuKzlCc=;
	b=HMJ83eFe54BNLeNcQAXdM3rfgmNytSZ/z6cllLS24IvhM+8R0ZebIOb4BsmzLyM8
	rj2AKswzjDXzkmwAZ7N9IVWKN6AuJcoalcmWJsu6TQoUCR78Z3RaeRm6jQT9Pfe0YMQ
	Gr30+cMbZUvccK4jFfTweBXvAbgPrHiiPXJIfXNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648083598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GJEi9yuFOsTwf9mfEKOs8MQg3KzPrUWumEJ2KuKzlCc=;
	b=TbBRSV/71becLwYC6Ifn8HYv1YWd4RH25fVW3CWKXoJ6ZXtwrqk2SMdsuo3XuNMx
	xTqaOOZcxUzoWaG38VDl0EfXq4xCmK9MgMZw3z83oETXRxRnzk/5MObK/2v7lEuTPML
	sQkxZcWm5GuJvVdxr+XhfukjwHjGC9b/uNpl9BXA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb96ffbbd-1dcf1f5e-0c94-49b2-9352-83b9c909b6bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cff84e895e170f82a67619c21836dac969c4ef2dbf2fd72b019b1bcda29352d
Date: Thu, 24 Mar 2022 00:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648083598
