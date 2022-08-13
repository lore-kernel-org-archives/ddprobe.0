Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B0C7E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660405852;
	h=To:Subject:From:Message-Id:Date;
	bh=a3iRuI/BR9q5QLXmbXw9LtWoaZ5ZyRJ7OVe3eao+I+8=;
	b=PX7q6AME9QrFrRpr8msmu3/V68h5IH+W2nS6DKoxMIH/Dz3HQxMnWUz+Ydm3rtpl
	qaOinzRb67Dp6dbAvxrElJIypjuA1x+IVcZKg0mWqWNpvfmS8b4BkmfOA8Ryoipw9X8
	7x4U2orqnCh3cCBBVal738eRNiwjZabsb0BwbZRc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660405852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a3iRuI/BR9q5QLXmbXw9LtWoaZ5ZyRJ7OVe3eao+I+8=;
	b=HmW+HTm1HApWJuiMeAB4RzEJwlMUEvviYqWROU2hLhYtu+TAOQriEmOwLN8NrYIl
	2Qt/+q4tNal+Jmlhq6GHzD40PzMP7WTk9RqN+Pd+IK9lbKLPsLkil3Zl2dYy8kdO8MN
	rM7AEtKEavfRjlI4WSU39dNqMzOCBWvoYeYwkzGc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018297e6a98d-a2865853-5957-4b8c-a333-c9ce63685b91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1a8f14e3a39d89ae2cd125ff9b04fe3a3df036c14763ad31b9dde55e6afd466
Date: Sat, 13 Aug 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660405852
