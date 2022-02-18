Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1A748D4
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645186585;
	h=To:Subject:From:Message-Id:Date;
	bh=zlf+MmEGbMjEo6N5//0c+ZnTpJmMqd3ZTkvTxtYJ3zo=;
	b=OGsq2g8GzZqW+QFI4/8OcaHDi7x6stnq5IcqkRajxFVVrl2U6zYu1hKIT3v1KoEw
	M6+K+4HdHs9sdeJN4VQCS+AZ5KgJNBJwJmpDsl4vlsyD3+cON8sDHD3+lcXUp68fhjR
	/yUqJOBVuzN2O75yRToJKcjFybbVwtzjFAD9CuiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645186585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zlf+MmEGbMjEo6N5//0c+ZnTpJmMqd3ZTkvTxtYJ3zo=;
	b=TCk0edy56qJmk3a1Gnn/USc0opi+C4SSW8gSwpKBTloTnv84adv+EHPkTXfzzWdP
	Thn3N3owCEV5asQtbFu9O+jI/rSdxLSPKqeXkZKUMbdV6l4R2/quV+93wKhZwH3ynm3
	f+P+MWv119E8ih9pxzc84bWXFcBpIt4mimSrkbSQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0cc31119-412ad7f1-90b8-42cf-9bc9-efd8f695d45c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0c88be9a5127121c9d64a12b090d01e5af4e1f46fa45c13c5b8535387b70dad
Date: Fri, 18 Feb 2022 12:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645186584
