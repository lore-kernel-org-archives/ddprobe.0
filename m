Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397824680
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 15:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658417212;
	h=To:Subject:From:Message-Id:Date;
	bh=SXDWAwQYK/0H92VOinvqVEWUAvnJdwtmws1A28lZ+ys=;
	b=b5IZSUBkWiH7wCpy20r3duJW57ZxCzYh3Wwx8Xjh7v3cVRqXJtb5gRU5azo2v/6l
	fp3rwwUX9APz+BztVM/fMrYNYc7Bp8XFV24Vjv77wBAgWNbPb7OLRpvs6Snrv8Z9Qtc
	WYKctKJEB8tHcicDXHBzHQQYUaNa/UJZGbabGVFI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658417212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SXDWAwQYK/0H92VOinvqVEWUAvnJdwtmws1A28lZ+ys=;
	b=UEGhLXl50XO1RggkjI8TQ2QjCx9VSgWfmA/QncgarCbtYN/WW/2Rl6w2VW6hOAaq
	vWIgf3kW5zLEoAI6rAQhOssm9CMLFsXKKVG++XMVHkEq4UO/eq9+Dg3i4Dd8pCPYCEl
	R3XzhUh5UGHnZ/Z7k7AGEuV+eb+/+ryWnTY3TKqU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182215e6bac-24ad31dd-645d-4bc9-ace5-e1dc1cf94348-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0b57a92b7542660de128d235934c366b02174d9f58e49ae09f4969247d20ba5
Date: Thu, 21 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658417212
