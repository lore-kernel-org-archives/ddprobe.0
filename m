Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 844137A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646502984;
	h=To:Subject:From:Message-Id:Date;
	bh=dY0VrdZ6OJ/F0nwK4DOu5aIh0Fnvf/EFf+lteKBuRgQ=;
	b=ZgHvMqSCyEA1i9HDiDqsd11Vj+KtfFWnuKLLOV/xvXP+SPIOG3a2zuxWZKpBUcnV
	R9jOl4IE9YQ/NcQZcZiieITyawIntlQgH3xVYi1RSF5vNCGFHysvSmzvtM5d7HpBauy
	0zov9mwzP5fIJXK7lJZk5VcnjFM0fo2U6YkChU20=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646502984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dY0VrdZ6OJ/F0nwK4DOu5aIh0Fnvf/EFf+lteKBuRgQ=;
	b=EZrcUarMHwIGrfNkYpwRWL5eOF63edLtKpkArSLJkQsaPCua+9cLN/OjXlY1nc3U
	cipgNwKf3xvbTD0wpdQS/DT+36pxPodD1B62+P8ZA9dNAuVUsBqIFzCLC3IaAwtNScf
	kjoKzgFTWbO1zr+SiNffRP9cnu48RWWKrIJH80R8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5b39bc50-7fce0233-6cfd-4baf-880e-6cf2b1f460e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c54713974105f68d9671fe4704dff224d212b044d87b2a882a54c1bd23003e3b
Date: Sat, 5 Mar 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646502984
