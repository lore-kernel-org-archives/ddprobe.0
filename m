Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199DC468F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 03:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654398779;
	h=To:Subject:From:Message-Id:Date;
	bh=TAcdFCN9qFLV4xYK7NgeDZMhnhEyrKyL9tVCPFYtwtU=;
	b=fI1Gb/HK6EhG3ELbwNvmZiKAIExR/Syd2APfNzpbYdHqqngbjEipmuI5Ma/jOdXr
	8qYyofaD35YiPXanbDYfEKkUeUxRM6O6GZr7kt8h0QsnJfbHQs8eP15zkM3regMr4eJ
	bo+3tOmzalDPbAN9IJ+9AUpVDJUMKN8mbWxEML5o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654398779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TAcdFCN9qFLV4xYK7NgeDZMhnhEyrKyL9tVCPFYtwtU=;
	b=CpPKZ4FoJSu4O1ndVFfGZIR9PDivzPP5ARMNo/Z61aRoRvc3won0N5PA+S/Os0xR
	cXhBE3hBjskRKN5X6kJy/45p2gyK8aIBpeNPf1R1s65ZzVmIvElcfxur4lA6UsRqAhI
	vTGrl2U43XvSJYEDYTGxZenV1GcyYXtDuGO3HNno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018131d9ff99-9341278e-c942-4210-9d8e-58b7656618f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4dc7703351617d7458015088848c643416ef385b77fc2b796cdd8593fbe70ef
Date: Sun, 5 Jun 2022 03:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654398779
