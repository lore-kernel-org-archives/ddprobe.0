Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3F11841
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 02:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653619679;
	h=To:Subject:From:Message-Id:Date;
	bh=6jD9oXl+xyATVaPTG+30wTz3InbNAUDhx/C0+Z//RzU=;
	b=MUU4Qt4cyYOOloWpCCeeBXjEkVrtdhuAna11jZXSDfV471GGDEBlCgOwKbr9+xdk
	08j54GI/rhtOpu5j9vEprQBMBv5Biu6s5TnerP1eKjRIOGJR2a3mBLksmF3P6ijNgaR
	n+GwMFM6DyW2MSBbrB1jctujPMxqsa7702+QzU8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653619679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6jD9oXl+xyATVaPTG+30wTz3InbNAUDhx/C0+Z//RzU=;
	b=QCZBWhpc6gl9BzTV6/Qbyt3nNE7hB73EZpPSa7vIaZWGu0o9+s+I4gzC/UsISJud
	dTVPLY8gE29L8OhhvsJg4I0WhGH6515W23h0ePdO4/CbKy99hg6aAMM4ywrKSAGNV4U
	QOWMF2ZrwChGwgvydE4qklAiW6FSazJ+xduqaJPs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810369e076-64d51cf5-4a8e-4678-b8b6-171cf144e688-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 972fa34bb7ca81d3a34339ba5595f754af0586713eac41dffad9a722acfdd2a6
Date: Fri, 27 May 2022 02:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653619679
