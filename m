Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E5D20F4
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 04:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648529398;
	h=To:Subject:From:Message-Id:Date;
	bh=Wup0d+wVF7ewVWMpEnF3sDEAxLFrg3/hDxNEhINISyE=;
	b=YE60e67AXoaZk8kF82CjYspSpYt8XqUpnwPlwscmN5FP0rWmS5vKoaDYuqgZqi9V
	QzoDVRF7FhfJ5wVLYYK/PGUXPIcby0K0tgGcYw3TyqirM6BtgclRkLA6wzgqlqTDWBB
	zbfSmcPS58oQjfY0edEBxpATBNo9MmTkL+1skTww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648529398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wup0d+wVF7ewVWMpEnF3sDEAxLFrg3/hDxNEhINISyE=;
	b=P6p2a5w6pYF74Aust2qK2LgzcGtVWrdjODnxAu9O9ZWmvK/i46e3+k+2pAZyrjqX
	dl0+vhQJsJYICZel+DlzTtueNwGYN2IQzsZxRerSK2MR6ubI4l1AelUhxI5HqWqbokr
	aRPgOHZlw2BnN3DcgZt5yqbw5UWKIVEQFJKisXjE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd40259f9-ff156859-c558-4baa-a718-2038cbd52fd9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b162fcf03bbcb238b71bd4b0a51bad63aab768dddb291e79ea0fbf4cc3229746
Date: Tue, 29 Mar 2022 04:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648529398
