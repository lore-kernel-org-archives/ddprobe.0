Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AA82F4E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645537284;
	h=To:Subject:From:Message-Id:Date;
	bh=CbC0RjM7XPZ/sGivLGg702FM6NFbeJO7a/YrRhduk1I=;
	b=d3E/ZcJETSTIK/3aPs9tYBukDVyN0MBgCYYqcQA6PEvdb0SL85EXYv0ctWPxdVls
	XEgpvNyd5DjLt1JBvgAVmIBL6educDf9f9vzMWhhbKIG5qctpj7yMfngv1AtIHE8sCj
	5iB+YOdMrpjLdUwgJeOFH5ETRaX0EHNogdlFoyeU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645537284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CbC0RjM7XPZ/sGivLGg702FM6NFbeJO7a/YrRhduk1I=;
	b=G8dddOYj+8EshHB0KmlJZ2nOoad4YEQnluIFIYAmM1IgRrUcHm4eGymZ3NJxBsBc
	LHP+8MtAOTwVSEAfwb76k7rVlCODnNr7ynUXeePaucIZdFe8nqQPyflkoWEMZdU+23n
	AMjQzMCk+XJuq+w3Hl0mxUzUu8yXELZpPiJ174CE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f21aa52b2-ecb7abf8-9a77-469e-8640-dc40fd592d38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c40e1bb2857df5ef29418e2f1345882b597cf33617cb1423e76a06c883e0f01
Date: Tue, 22 Feb 2022 13:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645537284
