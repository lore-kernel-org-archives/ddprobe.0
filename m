Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F367803
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660389652;
	h=To:Subject:From:Message-Id:Date;
	bh=fb2dbfou5FuOD2WdtWUG0FLCbE4HoX0s9Dxk+9GYLD0=;
	b=c6W811qPKU/YGQabpPlMe1oEPl1tVZONsw5cuej5RWmYXNGy430ikAaHXpfz9n1t
	vjVSpjnmh8fuh1uI2c7PzECwJ+kUZ57+ejLFDarZXTa0/ofRrpqncrGaPjMA1tgOnyJ
	xa2jcT6XoH0tXH0kDPt05gOyk0XQhQvpuw3ao5SU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660389652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fb2dbfou5FuOD2WdtWUG0FLCbE4HoX0s9Dxk+9GYLD0=;
	b=ZjcFJSphfSTCmha2vf30NK5siF9XhFAkP64ujV2dfQAXSzwo8/7Fpf5fgGabeh/e
	EJ3zdwS9pyLZ9P5NHeEVoFHTUXlp+Ow+z2XQu6SmjlSNwPzecpSklfwuV7bSvgq4O4a
	LD25SXM4rQJJ+94SBZoWwBRnANNzHCLuPHlzGYdQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018296ef7867-c54da332-ab1c-49cd-861e-493c79bf094f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d7f2d0b33164fc97d23eabc56280fb83588036a891a0a971eb5c9efcd8ccfd2
Date: Sat, 13 Aug 2022 11:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660389652
