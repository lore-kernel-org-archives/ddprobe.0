Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A397363E
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 17:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647883284;
	h=To:Subject:From:Message-Id:Date;
	bh=dSrmtFZ01ElSf/5CHieSbVQfoi7j8I1vyUV5czfmWQc=;
	b=YlmbYQD2xIF1+nM+WDsuaML7/7uWRC3cE5by7inrO++oO46IwGvVo86JhxreIgg2
	jY8dlSMz362ZFSPFExeXxGwQMiclf1Wq8yR05N0dus+zZzMBTNyX3kBQvCyr54sI+Ie
	ti6BQVbA5bJyPT+QYgp8rKEdz/YPnki/d0ZYAZ+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647883284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dSrmtFZ01ElSf/5CHieSbVQfoi7j8I1vyUV5czfmWQc=;
	b=OlogFtfkUJ0ttOi31VcFiOVcpbvTrmeGTCK6HZuotw6ElMi0lL2wp46vRtcQ0VLT
	pf6XkePVjGEas6oE4iVdWfyDoPqAUJyKQwl9R0nDI1stJbDZDUxvgNEIA/vVNqWDGQS
	rcNy1jKUS7plEDUczFEIgSNI8SajoPGeoi5t/3BA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad7f7132-32690d32-de14-4502-a673-347dd8a755c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bd1071668534b9a7fbdabdb90eb411e927dee595da16bb65d7bc01e6b191051
Date: Mon, 21 Mar 2022 17:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647883284
