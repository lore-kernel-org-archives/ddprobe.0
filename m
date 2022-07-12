Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061A84681
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 17:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657645612;
	h=To:Subject:From:Message-Id:Date;
	bh=RZGAXhdWuvzUh5NhUhH4JbYO9nZkGj/4t9JC/EBmyPI=;
	b=Hc57zDkqwpuiqn1kiaQ9Z5692YGMOEaZEXdRmvtTU1LALhGN7tMSK82mGk7wgu76
	cGsh3pe33duvuEl18lGZwf9JpA8x7WtlAsa26/fv6nphxfJqPYVcjp2s03fARaI0NTj
	/NGs8Kw2UEL7xrJtDVl/J4Eibxn6bLTHj+GWnhaw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657645612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RZGAXhdWuvzUh5NhUhH4JbYO9nZkGj/4t9JC/EBmyPI=;
	b=VcwSIaqzCyQJ6qGBLEZJ2wEp4zunY7vrE6oq3/pDGVbB7zXuHRDq1ofPYRXrqHS4
	Ed5fFHZa4QMxiZQ5blq8CGGuzlPcyHUy7zJHZOa5ORe58r88V3c72rfJoqMwiKQGMV0
	WaTKPOHopNKtVX8b71RVKS07NMX/eVG1/5nD4vvA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f360bcf4-51465129-b6b5-4d97-bfa5-bcd051b244fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed19f1f39cbf414bda487bde3bb1a868a09d0a8f38a9f848cc72b00af5b2443e
Date: Tue, 12 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657645612
