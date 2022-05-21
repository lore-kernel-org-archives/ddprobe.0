Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F16192
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 01:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653097799;
	h=To:Subject:From:Message-Id:Date;
	bh=WtUQ2EhgIZ9clRvt3LCf4en4CCpPkY9vqyhEqk5qYhg=;
	b=lhevyjoUYmxQ4YwckM6rHi4eD11ASNoUhNrWgwDmgU7lo+wIHJKVc9OmjZDAVj98
	OLlPey0XMbq7fGyQXQo6N3YM8ydxdWQODthAzgN9IZPPtYvwYkmzQYsDmNGJB6Fgqf2
	KpjI4l7KMBQX/u3qSUvNnDS1uJQpljw9WxNoe03U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653097799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WtUQ2EhgIZ9clRvt3LCf4en4CCpPkY9vqyhEqk5qYhg=;
	b=FIGIgvUlewZtfDKBKNrJD2avDj+7VOHEXp6ahtkFryZfkM6J8XQG8TDZr9TIlZhE
	x6mkcC2LchKWODXc8SZ3FQ+Gv05l9j0gJpTibXEXujz81OYraPDHkoTW86+dlYHvqzV
	MykP/lR++Kx+i4/x+8CyWckyndcD8GZf4XfGXwbw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e44e9e52-ad9b6a04-e97c-4ec7-88a5-70274b184813-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3789eb81f080ae65a49ce75e0f7185a35cd8cfc136afd73a0e261d6146ff2b71
Date: Sat, 21 May 2022 01:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653097799
