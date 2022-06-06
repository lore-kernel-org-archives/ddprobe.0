Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0225C46B7
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 02:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654482959;
	h=To:Subject:From:Message-Id:Date;
	bh=s0cNHlBmwI/8JZTa9G6goFLXdVkSmLTJIZLI7/xIl48=;
	b=JFeV7EBpEhv/faBKl57ev4d1m81HkRXb6lqPxOb9m1xIWwOB9wSe5KTZReZx/MN6
	m7lotVf+tR6gyL3mwVxrLMXvqLDDJuQeLShjYRPanuVdUyYGM2u8wRRfcDDCnheFytj
	hXkVWrXmXIJau7g4E0T/MNv6M0vxUzX8zFafxSOg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654482959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s0cNHlBmwI/8JZTa9G6goFLXdVkSmLTJIZLI7/xIl48=;
	b=TAaZ8p0Jf/5GgH2mzunI0Q/BgMiHnHwvnZxv2KWrNR6Uq08Zu+fbLC6kGn6LrASt
	TuiXnVmVnWljqbfJ77Myo1OpAw7fbM9r21pr5YDBqXQ18SHf7K4e6kos3ZctVj0dUo6
	XWLQuoAHHXrCIIe8m2z8hM9sM6svnaScBZl1W+3M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018136de7bb1-2dd7d3bb-8cbe-4b48-9e20-ed9bd3fa828e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d22a2a2befdf48785340bff6a3a4aeca893883ab17eca8f37d13d7acae187bb3
Date: Mon, 6 Jun 2022 02:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654482959
