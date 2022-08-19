Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B3E7B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660877453;
	h=To:Subject:From:Message-Id:Date;
	bh=njGCBDYbw4gwATBd/AaTHxPBA6O4yeAVHD4RmcjSp+s=;
	b=d2d+JHlpb3ldpY2KUlMT2MbAstOaWixISe/+fK0+dOLnKe7o/4GJEy9xZ+wsJ7JG
	UMKW/v/WcQTV/wLjmB5Hm+DT/BgTxGZZPxEHWphM6TEK/rV7RhoSjTavEyYIPRHwXPg
	RRjU6RZ5iB4WF+jJLDyuJLjkiHYJXcbS9zWx+xao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660877453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=njGCBDYbw4gwATBd/AaTHxPBA6O4yeAVHD4RmcjSp+s=;
	b=JIyBo7aT8rSUfPT3EqBSXEtFFCZTPtjwGB9xTghIw9QG4/K0xuoi4v8LkxTTcjiN
	F6Dsk12H+zUlsaXl3T7yYBmw997Ia9WjiY44vLH1OprxbShgrjfU2RPv8qq8XdJ+iLZ
	VkEy2vnrwPvoesVBO6/A4/cU/HTu57WjgffrRwuA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b402b524-f8bbeb80-5920-49bd-b49a-888d09c812a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 317be2f78c6171eff95813c0ae162e8bb0b4b3d1c85689c7059f2e13779634e5
Date: Fri, 19 Aug 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660877452
