Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBDE81D
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 04:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649565538;
	h=To:Subject:From:Message-Id:Date;
	bh=VXdPgK41+cLC/63fe6UM7/9kqGTnQNWiTTeX2fjsvOc=;
	b=i0evIXpmFSjHR34OpNDGnQ0ezGxQZ50iSJmeN34wzWjWHLBMFXeyTSq1I5YuFZ0V
	UNiIXFzK15ejrBdQjTb3VEw0XiuWAlceHRCxFzuszVcb98z6swqngBhX0uj4CrRamTF
	nqoiPjlD1+MxOxE85na6ZnjcMjJ0haFxao1k4FOU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649565538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VXdPgK41+cLC/63fe6UM7/9kqGTnQNWiTTeX2fjsvOc=;
	b=Zp1AeDj4gEd0bF/Vejq2t2yshmiOA3M7SQ9SXldAVcHDMtehpIc099S+65/7hki0
	X3yOQE1KBUpTgbi9bEO5jO045exLHtfk3AJsPgsfjQEAyIGfDX8YhMka+j+SqRZuK25
	P4sYDurI4xQUzPmlKQarE4bFErXeVuKhLkMbcRQQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018011c497e1-8cbe3742-8a9b-4713-ad3e-02b775a350a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10d41ed0c6dedf34e9bcd4b11554c6d89bedd4f0d3de5e271e34a529e9ea134e
Date: Sun, 10 Apr 2022 04:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649565538
