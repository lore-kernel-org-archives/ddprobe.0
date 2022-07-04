Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5057E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 06:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656915413;
	h=To:Subject:From:Message-Id:Date;
	bh=MCPP7hMdWGbjExvxYal++mSWdsQzlCBnCuxromJxJNg=;
	b=Mu2vI21o2qHt4B+tqBEkj7hXimOADboycIgP5yrydjvDC+VeRXE9SQxGmYRgeb0c
	L2DkCrgkwQbFzi7JTGQOkq4rsOJKqT2Ebg/uCQ2rT0nadpYLj9Iyw1vVNQw+OH78VZ5
	FSCfPPrI1RRcHOQFMW1O3w+aIHRwy5tajlHjzdXo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656915413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MCPP7hMdWGbjExvxYal++mSWdsQzlCBnCuxromJxJNg=;
	b=ShfRLpn5Wm9Wryk5gFVESSaMBoGmVCkoLBfy2VpdAzoLXN59RbBqoOqpJStNC3zj
	9LFjClsiywE3OKzbB44wcb59SHvKF6sBhgvHPffs1+jBRnH+IabCoNaVF9G6EkQGTfj
	0DEnh11KfYPJt+qZ560HtTQoO9h5kkm9j6TqUyOw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c7dac560-c0d0dfe7-e520-41e0-bac1-2a8ac1ca8b47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f75d505cead3235784f16808e8b07301b4eebaec03ad683b3e842cd8de524745
Date: Mon, 4 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656915412
