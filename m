Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4E823A1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 04:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656045412;
	h=To:Subject:From:Message-Id:Date;
	bh=1FYrEedAyQhcO69rJHWbVUvCxwP9NWrupUIPYlpWbH4=;
	b=bgzZyJmGuPVye/bR96DGOfvM+1sgZA1QwYsaYl6m9SPtp0dJrtv+6ztkVCBbLoI0
	X8ZAFr/9YBPy3zRNLRE8n8riEDfPWov9eJHFBy41qvll5UXwDMJVQS9ZgTnEZsgyiJq
	LD613kbR94holAU/mgGmctE78qN7K9iM8k+ixb2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656045412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1FYrEedAyQhcO69rJHWbVUvCxwP9NWrupUIPYlpWbH4=;
	b=GN4JusnxKnV+BsopSkDIW4EpXSjfI8eCOfIJaw4twuTdv1WfpFPP/ZQwJRUggFkU
	Bl98bd93Qj+r5GUT/Crhj+Q979SAY6XWoYHT1cBVSqBUolLagtvMfHIaXwNIcmTZ+pB
	thOS3pClxNiONV0qQ48lJnC7DfetO9r9DWKar3S4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018193ff9fb7-d5ed4c69-f93f-4b05-ae62-9b68b4091538-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b83c6903bfe16737f6094fc6af3e3cc15cae1db0573487e312903d2a6bf10882
Date: Fri, 24 Jun 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656045412
