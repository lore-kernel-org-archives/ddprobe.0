Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79E2161
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645353985;
	h=To:Subject:From:Message-Id:Date;
	bh=tXPA3E4TvvhzT51j3X94qVAspiRd+KnCe0kgJQFaCaE=;
	b=LBgILzz3knT5hUz5A3FDPAG/ep/dkmCza+ARjvLCikINxZXsJgCBBBjf3xxmXP44
	iljGOX1gKdhLsM6/AW693MVzyPoevWUVgma7JarSNlF0vqCH5r2yBXwGFXtaFgZTmUo
	wux5LOTeWEZCDU+wq8wEy/BeUE5hj9lNZd+rFF00=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645353985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tXPA3E4TvvhzT51j3X94qVAspiRd+KnCe0kgJQFaCaE=;
	b=fwc3Zr+k2w0qUzqyQDo8q/W6p3WMAwUMnfPYU/87rkNWtB0BA5PbPoOPFVv2U6ZF
	gMf9m0zQKUhE4MwhVi8ClIfGOmiToz9/s1FVLQIFZ2H1oqZ+NOClMvmGe9AUVJkImEl
	HULGMhBRDTXHppMKygsnVh99TovtGiswzpKUkMFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f16bd6329-ba282838-0878-4409-b945-0a41215c2924-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b056b583036e0d9632248700eea93b2e5d85f987d1019825e25453be84440e27
Date: Sun, 20 Feb 2022 10:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645353984
