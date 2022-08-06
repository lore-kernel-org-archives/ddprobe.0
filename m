Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B887C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659811852;
	h=To:Subject:From:Message-Id:Date;
	bh=4seueCHECqLkm+QaxlhqjOyd+ucO4SjSO2iz6UFHI70=;
	b=OpPH5r0pATFpYqb7d6SvdXy0dlKqfeUr/NSZfmsq91XGnxWOmmVs88YuLRB8j4A3
	sx1qjc0jhXRXG7hZEC7vKmzWujHhoiqyr4dGRPEG7gq2zQ1qodrXLNQalkEEDQ7dTKe
	cFQuDcunrizA5HdPLul88URraygpu7/vJYrYcgO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659811852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4seueCHECqLkm+QaxlhqjOyd+ucO4SjSO2iz6UFHI70=;
	b=GHGUKx29Av0ZgN75CKesmm9/+PZGawEDF88wwCEOOLVrnY7KotqwFVKmm4Ain9Z1
	JdgmWM4ifH8awAoayUrNFO7Mkp7usflk0xCnSHX4sTMOoHmvcMiMmlMe9i/GvmCZCux
	H5vXUnydLoF2mbg1/elu/eu4HSj/6fH/Z0qdGfHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182747ef16f-2dd56cd3-a197-4284-8379-5b8bf4150984-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29e0a599bf2a360f87122c7abb216bf9fa88d6c307ed0b06cd9bbe3f6db7c324
Date: Sat, 6 Aug 2022 18:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659811852
