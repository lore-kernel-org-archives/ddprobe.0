Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96EC10EC
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 07:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649662618;
	h=To:Subject:From:Message-Id:Date;
	bh=V5IBjaIR+GieFTzozW2RAN4/CbDp++B5s+aTfqMuWNM=;
	b=WyxJxbRF7oGKmDCO71ZQ15lZl+NKflISVzna/zQDU8RA6AM7mnEN1c69ewX5fVA+
	5D1sPEGaqGktJZdx4s8jqxCLcXRxFO++LbMCzLpr2WMVzkaupPiuUVzHTHTISjKWcw/
	MXb7TkH2Jv929crOkJZcEL9+Avj7gkGcKzDZv+CA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649662618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V5IBjaIR+GieFTzozW2RAN4/CbDp++B5s+aTfqMuWNM=;
	b=SeAV6jcqQSOwaVEGg8O234GgxBP62NRoNZCGtT6KCUDOb3CPcF6s4VsQq5up4s7D
	2+qWtA2ZfH3kg1w8DJIMVsfM3fx0I7/J+qfLMiJOgLNHgxzVHzS3LTN0U32+E5JTP/Y
	EGSV3zofoEb3x+4rCjBMPIipsLAV1MDi+Ta5/iGc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180178deab8-b32e104a-47af-49d2-aa8a-a71428c9d0b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: badc16796abb1c9bfd1145a80f8eca287dd4c7fd5d1fd2b0eb8e871559bd9f2b
Date: Mon, 11 Apr 2022 07:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649662618
