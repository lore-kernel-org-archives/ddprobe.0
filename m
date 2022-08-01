Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42ED37F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659339052;
	h=To:Subject:From:Message-Id:Date;
	bh=tGJLA7pkGALNf2nCAbq7zj6JWNOfZcZ6Qg4gVNH9dzw=;
	b=AixJSxegKnJV0xFqHllBfz1U6dvk5J7a4KHRlNU+ki7pVVMc8u0grsFYOm6t67um
	82dRpZlXnW43NGuAhhMMLpb93NPGScPGR2FRlBqWRKiNrvW3m2pm7hwK0QfkYhrFxVb
	A4CoxTuz2Dh01lLtajUPxdWWQs/9RCJrYoQZntV0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659339052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tGJLA7pkGALNf2nCAbq7zj6JWNOfZcZ6Qg4gVNH9dzw=;
	b=cDq0+NU53x1f/ohfADS+CEBNN03sFo+KMjTwfNF6SiFqiw0XOFKqi3uu5o3xzu29
	lNizejxumjBoGxs7M7He+QKPIaeeeK5zHJMh/0ucJ29RQO0XG/rDxuHuVFXZ/0j/IJR
	U+2VLwnk4oYcezsn4Y1TeEX+4v19JVSUnHXNEAto=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182585095f3-ba1cd689-3cd4-4ed0-b7e9-21a2f7ffc223-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8479ea2498c834a036c851370a7a7f6e0e491e7d6b96afbd5cf0b69031d53c7
Date: Mon, 1 Aug 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659339052
