Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E8F2F5F
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660251053;
	h=To:Subject:From:Message-Id:Date;
	bh=LU/0Rx3A9Bi051gyIlslkG7WleqnwmLt8LwUf0fiABA=;
	b=SYhtEtvCGz92/BJa1rEmS8Dvrkl+7Kgnt7s3gVQtj2A3RaoYVPQZG4c0Y6LwlT/T
	ZEjb3jZj9zFJhp9YzR0Y1LSo/B1RGOwAHzi45j/g9+d8Lassqo8SRL0WDRQlYU4AleN
	bIe3b0EHzvA9sYiXBYWcLOaYQYWtXWiIHf5KmHdU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660251053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LU/0Rx3A9Bi051gyIlslkG7WleqnwmLt8LwUf0fiABA=;
	b=jR459I7yemEzPnpyaGzOcl8PRHn/P3W9iUY+Qoot2iqv8Pof/AP/p4ULenM6Yo9r
	yIkbAdu6eyV0jxeDTAN+ZLje+9E+ykSm5WHum3fNlzzTJosdFe8bSBV4z3ljYSDxhtr
	Ajf8sTKXlwAgrPHrkopUyvHAlsIC3yb5n4ya/4gs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828eac9a2e-646ac029-6571-4d83-85bc-38cb2b2b0175-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8bcadcccdf6682034294ebb5463d4db7dce47d6a30aaa93569f9ea8e4ac7a03e
Date: Thu, 11 Aug 2022 20:50:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660251052
