Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DAA29A8
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 12:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653914159;
	h=To:Subject:From:Message-Id:Date;
	bh=N/0ezLovvGWibFc0iHWpvoDZ3QtSlHxCFBqRHFkFSSc=;
	b=i+pUjP5rx5UtSeqUhSAVBoU6M6KQJcyD0CS0Mv4rREE0+8vwfqBwuU7ntLizK6qa
	vhHnJuZ1tLg0/ypAxY7oTtf8Z9C5SK5D/rQ0g/BFzmNxtlSotpPQ/3DX2hP/1GugOFm
	m9FmZ/XkHcRIUkZLtJNskdRb0TkwiPHQO/N3ZOOI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653914159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N/0ezLovvGWibFc0iHWpvoDZ3QtSlHxCFBqRHFkFSSc=;
	b=H5R16nA7N1ffavPnDRH5jFtHYps6O1wPudVcyI210AQ8JsTzNbfhp08bVGvKjHsG
	aeft94SeEf00pzmhG5ssGqUk0lna/uu165rMJJaTCXpBoDqHUTOTMU/13UridOWKJes
	1M7euEuM4BOEE8cM8rZMHx68jbeWscInSQ04IoHc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018114f748b4-0d7a5aea-ac85-4ce0-af17-d24fdd81a5b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33d1e9269e98e2d6b2e248bf07f6540d83a11907fd0a36b77dd98f80d06672e9
Date: Mon, 30 May 2022 12:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653914159
