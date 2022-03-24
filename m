Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202B57E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 10:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648118818;
	h=To:Subject:From:Message-Id:Date;
	bh=Rbgnc+Vgv6YO6xw/P4WPcl7+tHdNf3fwJkwOP5cUvEg=;
	b=mpL7eLi+lXfnTRXvK+tZyLv6MR0Ieo3t8ZYvUVEi2k/oHMqQ7tk8VY99VLZjO+gA
	kq4AJu3uECFa5gq1dr8ap5kbgx05E2emk2ZTRvUOL6YpsptOrenZ2uPRGFlv4Nm6ryQ
	0U1t2AeX+l3+pioZ7XM3Lh1MZWGcQDSbIwIWh9XQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648118818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rbgnc+Vgv6YO6xw/P4WPcl7+tHdNf3fwJkwOP5cUvEg=;
	b=Ai2e0orseR+CVieopfoWzB1D4hTcAojDJSokNVmROnlsHl4O03cuqCDvG39cjN8F
	lNHbuJgCtqQAOyEATzHG2U7erPyAxnlt+kvkIO8zOnOqjm6Ust0qZ30HWhzqjJrda6I
	Vxt7b6Wnzg49KIhaUgsaOduuOENDq3WRl9Kpf2hI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbb8965d5-68c32148-965b-4138-8d65-e735e8f74b8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4879d09b20701d3b28e37e43a5381497e8657fbfc8b1147e1871729d74980135
Date: Thu, 24 Mar 2022 10:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648118818
