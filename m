Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71DAED1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 09:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655110919;
	h=To:Subject:From:Message-Id:Date;
	bh=JjVVck37Vn1tfk3GWmhVubg+27DzzP66JxBUGVNQpow=;
	b=VdloF4h417Gp8aaq+QonTSHdQXYcjZNWdKXWfOsMtPud9lAA9CaMnAcxcKzJn5RR
	lCtIGoFAJX+R/OZ1BNSDSCkHh2OHx239MWviHWM6C/oezprQTnX/zqj6J6guHyo9xXt
	1m4NgAOtuXDxUqqD12RwMO+d6jtr097r5s4UhTyg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655110919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JjVVck37Vn1tfk3GWmhVubg+27DzzP66JxBUGVNQpow=;
	b=iPRUBRXCMz/rZFke54WG5KulfynPkGoLGB6sGO8K5p/uQq2nvh6oywGMeVFNxtU/
	2thosaWOWD+jdIXhNfzgIFXGbDMAle565/VLkxludPDfqvaN6WNOSBeXVX+Dw/Xlpre
	De7zIog/joAzkHVdSvUxFZztnSbaAWYQX2Zm9p18=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815c4c640e-c056c766-5cef-49e5-9edd-2591a53fda0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10e66ff584197613d7c154ede37fe5867628e4d2cdcf0c7a0c01261e76e08df4
Date: Mon, 13 Jun 2022 09:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655110919
