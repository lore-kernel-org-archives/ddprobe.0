Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225617B
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 09:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649756398;
	h=To:Subject:From:Message-Id:Date;
	bh=CRDBfmwoaQB4VllNano1fn+VJSq9BhqIzI8xBj/NNFQ=;
	b=VamxBM6R4ZWIY41Fxv567ZtX2yqQraQ2HGD+KWSUiJMXCEZ1SsKOOpDh1uCGcc3K
	NRejsSLOvKd80/h7vRXZ+nC+ahj/FpOwYGCugCe9aB5Ln8iRTNj2eqhgn2JjhI7kGfu
	IeimShZzdHBVFPNdbhQFyRO4D7757MILaySw0WlY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649756398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CRDBfmwoaQB4VllNano1fn+VJSq9BhqIzI8xBj/NNFQ=;
	b=E3THz/7hO25DCRYXv/vu9ebqQTMPVu/IR4JSEaNPTZaPj3bPZ83cahwrD3HpKrpb
	AQr9NqdW4lBZEdffAVwZCdoXpIoreJvVHTUfR7RSC3NoHT0eo4DHzEc6p+6Iw+HiX9o
	mM44Dv5YMHmshtJ9txlXvxvNbEC/xa3IGi2kqUNs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801d24e2c8-53b1e86f-6af6-4d83-b952-5db252055535-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d86e9291f4a3475200ae2205884161d2babf86ce2cde711b7bc4b85bbdf2dc0d
Date: Tue, 12 Apr 2022 09:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649756398
